# Nabídky CS — provozní manuál

Tento projekt generuje **klientské nabídky** (a u CS Tech / CS Bot i smlouvy) jako statické
stránky na nehádatelných **GUID URL** (`https://nabidky.cstech.cz/<GUID>/`). Vzor stylu = SoftMedia.

---

## 🎯 Cíl (MVP — fáze 1)

1. Přijde zadání: *„Pojďme udělat nabídku pro `<brand>`."*
2. Do `podklady/<brand>/` se nahrají podklady — e-maily, **záznam schůzky**, kalkulace, grafika.
3. **Frank (Claude) vygeneruje nabídku** na GUID URL.
4. **Standa s Frankem doladí** styl a obsah.
5. Standa pošle URL klientovi. **Hotovo — nic víc v této fázi neřešíme.**

> **Budoucnost (NEřešit teď, a řeší to Adam, ne Standa):** engine nad nabídkami — zpětné
> prohlížení, kopírování z templatu, mazání, komentáře, databáze.

---

## 👥 Role

- **Adam** — vlastník projektu. Architektura, engine, databáze, budoucí směr.
- **Standa** — obchodní ředitel. Ladí **brand, styl komunikace a prvky nabídky**. *(Tohle je jeho první kódovací projekt.)*
- **Frank (Claude)** — generuje nabídky, **vede Standu**, hlídá architekturu a konzistenci.

---

## 🚀 Ahoj Stando! (start tady)

Vítej. Tady se nemusíš bát nic rozbít — Frank tě provede. Pár jistot na úvod:

- **Nemusíš umět kódovat.** Řekneš, co chceš, a Frank to napíše a nasadí.
- **Jak vyrobíš novou nabídku:**
  1. Nahraj podklady do `podklady/<brand>/` (e-maily, záznam schůzky, ceny, grafika).
  2. Napiš Frankovi: **„Udělej nabídku pro `<brand>` — klient `<jméno>`."**
  3. Frank ji vygeneruje a pošle ti **odkaz**. Otevři, mrkni.
  4. Říkej úpravy lidsky: *„dej to světlejší", „zkrať úvod", „přidej sekci s referencemi"*. Frank ladí.
  5. Až budeš spokojený, pošli odkaz klientovi.
- **Když si nejsi jistý — zeptej se Franka.** Od toho tu je.

### Co laď ty 🎛️
Brand vzhled, **styl komunikace** (jak nabídka „mluví"), prvky a pořadí sekcí, texty, ceny.
Pravidla každého brandu jsou v **`brands/<brand>/brand.md`** — to je tvoje hřiště.

### Čeho se nedotýkej (a proč) ⛔
Architektura, struktura složek, `.gitignore`, deploy, sdílené `www/_assets/`, git.
Tohle drží projekt pohromadě a řeší to **Adam + Frank**. Když budeš něco z toho potřebovat,
řekni Frankovi — udělá to za tebe.

---

## 🗂️ Kde co je

```
CLAUDE.md                 ← tenhle manuál (čte se vždy)
templates/nabidka.md      ← sdílená anatomie nabídky (struktura, technické konvence)
brands/<brand>/
  ├── brand.md            ← DESIGN RULEZ brandu (Standovo hřiště)
  └── logo*.svg           ← loga
podklady/<brand>/         ← sem se sypou podklady (mimo git)
www/_assets/<brand>/      ← web-dostupné loga (v gitu)
www/<GUID>/index.html     ← živá nabídka (mimo git)
NABIDKY-INDEX.md          ← přehled vytvořených nabídek (mimo git)
```

Tři brandy: **cs-technologies** (weby/eshopy) · **cs-bot** (voiceboti) · **samolepak** (samolepky).

---

## 🤖 Instrukce pro Franka (Claude)

- **Když se připojí Standa, přivítej ho** a nabídni, že ho provedeš první nabídkou. Buď trpělivý,
  vysvětluj lidsky, předpokládej že nekóduje. Ukazuj výsledek (odkaz), ne kód.
- **Postup tvorby nabídky:** přečti `templates/nabidka.md` + `brands/<brand>/brand.md` + podklady
  klienta → vygeneruj self-contained `www/<GUID>/index.html` → ověř živé URL (HTTP 200) → pošli odkaz.
- **Drž design rulez** z `brand.md`. Konzistenci neporušuj — měň obsah a prvky, ne základní vzhled.
- **Reálná data > fantazie.** Ceny a fakta čerpej z podkladů. Orientační čísla vždy označ.
- **Git řešíš ty, ne Standa.** Commituj jen engine (assety, MD, šablony) — nabídky zůstávají mimo git.
  Commituj jako `adamcstech <adam.cstech@gmail.com>`, push na `origin main`.
- **Po vygenerování zapiš nabídku do `NABIDKY-INDEX.md`** (brand, klient, GUID, datum, stav).
- **Architekturu neměň** bez Adama. Databázi/engine řeš s Adamem, ne se Standou.
