# Vizuál — barvy, fonty, logo

Platí pro prezentace, dokumenty, grafiku i webové výstupy.

## Barvy

| Role | Barva | Hex |
|---|---|---|
| Báze (tmavá) | navy | `#061b31` |
| Akcent | zelená | `#0f9b4a` |
| Akcent | tyrkysová | `#02d1cb` |
| Doplňková | limetka | `#deea01` |
| Doplňková | oranžová | `#f06c1a` |

**Hlavní akcent je gradient zelená → tyrkysová** (`#0f9b4a` → `#02d1cb`). Používá se na zvýraznění, ne na plochy.

Zásada: **navy jako základ, jedna akcentní barva na dokument.** Limetka a oranžová jsou na upozornění a poznámky, ne na nadpisy.

## Fonty

- **Poppins** — texty, nadpisy v UI, běžný obsah
- **Roboto Slab** — displejové nadpisy, velká čísla

Když Poppins není k dispozici, náhrada je systémový sans-serif. Nikdy ne Times, Comic Sans ani dekorativní fonty.

## Logo

Existují **dvě varianty podle pozadí** a je nutné je nepletat:

| Soubor | Kdy |
|---|---|
| `logo.svg` | na **tmavém** pozadí (bílý text) |
| `logo-dark.svg` | na **světlém** pozadí (navy text, barevná ikona) |

Obě najdeš na `https://nabidky.cstech.cz/_assets/cs-technologies/`.

**Jedno logo přes oba režimy nestačí** — bílý text na světlém pozadí zmizí. Tohle je nejčastější chyba, kterou u materiálů vídáme.

Další pravidla: logo nedeformuj, nepřebarvuj, nedávej na nekontrastní fotku a nech mu kolem volný prostor alespoň ve výšce ikony.

## Tiskové výstupy

Dokumenty pro tisk dělej **světlé a inkoust-úsporné** bez ohledu na to, jak vypadají na obrazovce: bílé pozadí, tmavý text, žádné gradientové plochy a glow efekty, logo s tmavým textem. Gradientový text převeď na plnou barvu — v tisku by se ztratil.
