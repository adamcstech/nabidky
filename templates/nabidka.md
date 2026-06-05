# 📐 Anatomie nabídky (sdílená kostra)

Tohle je **technický a strukturní základ** každé nabídky — společný pro všechny brandy.
Brandově specifické věci (barvy, fonty, tón) jsou v `brands/<brand>/brand.md`.

> Vzor celého stylu = nabídka SoftMedia (`nabidka.softmedia.cz`). My ji rebrandujeme do našich tří značek.

---

## Technické konvence (NEMĚNIT bez domluvy s Adamem/Frankem)

- **Formát:** jeden **self-contained** `index.html` — inline CSS, malé inline JS (přepínač režimu + scroll progress). Google Fonts povolené. **Žádný backend.**
- **Umístění:** `www/<GUID>/index.html` → živé na `https://nabidky.cstech.cz/<GUID>/`
- **GUID** (nehádatelný): `cat /proc/sys/kernel/random/uuid`
- **Brand assety** (loga): `www/_assets/<brand>/…` — v HTML odkazuj absolutně, např. `/_assets/cs-bot/logo-full.svg`
- Vždy `<meta name="robots" content="noindex,nofollow">`
- **Číslo nabídky:** `<BRAND>-RRRR-MM-<KLIENT>` (např. `CSB-2026-06-BEST`)
- **Mimo git** (privacy = nehádatelný GUID). V gitu jsou jen brand assety, šablony a tyhle MD.

---

## Kanonická struktura sekcí (styl SoftMedia, 01–10)

Brand může prvky **obměnit nebo přeskládat** — ale tón a logika zůstávají. Pořadí je doporučené.

| # | Sekce | Obsah |
|---|---|---|
| — | **Topbar** | logo + štítek „Nabídka · Klient" + přepínač světlý/tmavý |
| — | **Hero** | eyebrow s číslem nabídky · H1 · lead · meta lišta (**Pro / Od / Datum / Platnost**) |
| 01 | **Porozumění zadání** | co řešíme a proč, priority |
| 02 | **Co dodáme / co to umí** | jádro řešení (karty / feature grid) |
| 03 | **Varianty & cena** | ceník nebo varianty s rozpadem |
| 04 | **Volitelná rozšíření** | doplňky „přidáme kdykoliv" |
| 05 | **Srovnání variant** | tabulka ✓/— (volitelné) |
| 06 | **Jak to probíhá** | kroky realizace |
| 07 | **Předpoklady a součinnost** | co potřebujeme od klienta |
| 08 | **Provoz / Reference** | dle brandu (správa, nebo reference) |
| 09 | **Proč `<brand>`** | důvody volit nás |
| 10 | **Podmínky nabídky** | ceny bez DPH, platnost, platba |
| — | **CTA + Footer** | výzva, subjekt, kontakt, „Důvěrné · pro klienta" |

---

## Pevná pravidla obsahu

- **Ceny vždy uváděj „bez DPH"** (a doplň částku s DPH, kde to dává smysl). DPH 21 %.
- **Orientační / ilustrativní čísla VŽDY označ** (poznámka pod tabulkou). Nikdy nevydávej odhad za pevnou cenu.
- **Reálná data mají přednost** — čerpej z podkladů klienta (smlouvy, kalkulace, záznam schůzky), ne z fantazie.
- **Platnost nabídky:** 30 dní od data vystavení (pokud Adam neřekne jinak).
- Patička vždy obsahuje právní subjekt a „Důvěrné · určeno výhradně pro `<klient>`".

---

## Komponenty, které máme připravené (sdíleně napříč brandy)

Hero · meta lišta · číslované sekce · feature karty · ceníková tabulka · karty variant · srovnávací tabulka · timeline kroků · „note" poznámka · CTA blok · patička.
Stačí je přebarvit dle `brand.md` — strukturu znovu nevymýšlej.
