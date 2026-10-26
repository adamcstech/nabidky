#!/bin/bash
# Publikace brandových skillů. Zdroj = skills/<name>/, výstup:
#   /brand/<name>/brand-full.txt         ← kanonická verze pro vzdálenou aktualizaci (vše v jednom)
#   /brand/<name>/SKILL.txt + references/*.txt   ← mirror po částech
#   /brand/<name>.zip                    ← balíček k nahrání do claude.ai / ChatGPT
# Pozn.: server (nginx) vrací na .md 403, proto se kanonické kopie publikují jako .txt.
# Použití: ./skills/publish.sh [name]   (bez argumentu publikuje všechny)
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGETS=("${1:-}")
[[ -z "${TARGETS[0]}" ]] && TARGETS=($(find "$ROOT/skills" -mindepth 1 -maxdepth 1 -type d -printf '%f\n'))

for NAME in "${TARGETS[@]}"; do
  SRC="$ROOT/skills/$NAME"
  [[ -f "$SRC/SKILL.md" ]] || { echo "!! $NAME: chybí SKILL.md, přeskakuji"; continue; }

  # specifikace vyžaduje, aby se name ve frontmatteru rovnalo názvu složky
  FM=$(grep -m1 '^name:' "$SRC/SKILL.md" | sed 's/^name: *//')
  [[ "$FM" == "$NAME" ]] || { echo "!! $NAME: name ve frontmatteru je '$FM', složka je '$NAME'"; exit 1; }
  VER=$(grep -m1 'version:' "$SRC/SKILL.md" | sed 's/.*version: *//' | tr -d '"')

  DEST="$ROOT/www/brand/$NAME"
  rm -rf "$DEST"; mkdir -p "$DEST/references"

  # 1) mirror po částech jako .txt
  cp "$SRC/SKILL.md" "$DEST/SKILL.txt"
  for f in "$SRC"/references/*.md; do cp "$f" "$DEST/references/$(basename "${f%.md}").txt"; done

  # 2) konsolidovaná kanonická verze — jeden fetch, celý brand
  {
    echo "# $NAME — kanonická verze $VER (publikováno $(date +%Y-%m-%d))"
    echo
    echo "Tenhle soubor obsahuje celý brand v jednom: hlavní instrukce a všechny referenční sekce."
    echo "Má přednost před lokálně nainstalovanou verzí skillu, pokud je jeho verze vyšší."
    echo
    echo "---"; echo
    cat "$SRC/SKILL.md"
    for f in "$SRC"/references/*.md; do
      echo; echo "---"; echo
      echo "# === references/$(basename "$f") ==="; echo
      cat "$f"
    done
  } > "$DEST/brand-full.txt"

  # 3) zip k ručnímu nahrání (musí obsahovat složku se skillem)
  TMP=$(mktemp -d); mkdir -p "$TMP/$NAME"
  cp -r "$SRC"/. "$TMP/$NAME"/
  rm -f "$ROOT/www/brand/$NAME.zip"
  (cd "$TMP" && zip -qr "$ROOT/www/brand/$NAME.zip" "$NAME")
  rm -rf "$TMP"

  echo "✓ $NAME (v$VER) → /brand/$NAME/brand-full.txt + .zip"
done
