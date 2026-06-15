# CS Technologies — katalog komponent nabídky (offer-v1)

> **K čemu to je:** Nabídka CS Technologies se **neskládá z vymýšleného CSS**, ale z hotových
> dílků definovaných v `/_assets/cs-technologies/offer-v1.css`. Agent (i Standa) píše **jen obsah**
> — vybere bloky z tohoto katalogu a naplní do nich text. Vzhled ani tisk nemůže rozbít.
>
> **Verzování:** nabídka si v `<head>` přišpendlí `offer-v1.css` → je tím **zmražená**. Až budeme
> chtít design posunout, vznikne `offer-v2.css`; staré nabídky zůstanou na v1. Tenhle katalog
> popisuje **v1**. *(Design je zamčený — měň obsah, ne základní vzhled. Zásah do CSS = s Adamem.)*
>
> **Živá ukázka všech komponent:** `https://nabidky.cstech.cz/502d1d85-f882-4db7-afb0-a4ebd3d6aaca/`

---

## Jak vzniká nová nabídka

1. Vygeneruj GUID: `cat /proc/sys/kernel/random/uuid`
2. Založ `www/<GUID>/index.html` ze **skeletonu** níže (fixní boilerplate — neupravuje se).
3. Mezi `<!-- OBSAH -->` značky vlož **sekce** poskládané z dílků z tohoto katalogu.
4. Naplň text z podkladů klienta. Loga, fonty, CSS i JS jsou centrální — nic z toho nevkládáš inline.
5. Ověř živé URL (HTTP 200), zapiš do `NABIDKY-INDEX.md`.

**Default = čistý design system.** Pokud nabídka výjimečně potřebuje něco unikátního, je povolený
malý inline `<style>` v hlavičce jako únikový poklop — ale jen výjimečně, ne jako norma.

---

## Skeleton (fixní boilerplate — kopíruj 1:1)

```html
<!DOCTYPE html>
<html lang="cs" data-theme="dark">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="noindex, nofollow">
<title>{{TITULEK}} | CS Technologies</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&family=Roboto+Slab:wght@500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/_assets/cs-technologies/offer-v1.css">
</head>
<body>
<div id="progress"></div>

<header class="topbar"><div class="wrap">
  <img class="logo-on-dark" src="/_assets/cs-technologies/logo.svg" alt="CS Technologies">
  <img class="logo-on-light" src="/_assets/cs-technologies/logo-dark.svg" alt="CS Technologies">
  <div class="tb-right"><span class="tag">Nabídka&nbsp;·&nbsp;{{KLIENT}}</span>
    <button class="toggle" id="printBtn" title="Vytisknout / uložit PDF" aria-label="Tisk">🖨</button>
    <button class="toggle" id="themeBtn" title="Přepnout světlý/tmavý režim" aria-label="Přepnout režim">◐</button></div>
</div></header>

<!-- OBSAH ↓ -->

<!-- OBSAH ↑ -->

<script src="/_assets/cs-technologies/offer-v1.js"></script>
</body>
</html>
```

**Patička** (vlož na konec obsahu, kontakt = dle zpracovatele — Adam / Standa):

```html
<footer><div class="wrap">
  <div class="foot">
    <div class="col" style="max-width:340px">
      <img class="logo-on-dark" src="/_assets/cs-technologies/logo.svg" alt="CS Technologies">
      <img class="logo-on-light" src="/_assets/cs-technologies/logo-dark.svg" alt="CS Technologies">
      <p>Jsme digitální vývojáři. Stavíme funkční e-business a projekty, co mají skutečný smysl — řešení přizpůsobujeme vašim procesům.</p></div>
    <div class="col"><p><b style="color:var(--ink)">CS Technologies s.r.o.</b><br>
      Ak. Heyrovského 1178/6<br>500 03 Hradec Králové<br>
      IČO: 27463249 · DIČ: CZ27463249</p></div>
    <div class="col"><p><b style="color:var(--ink)">Kontakt</b><br>
      {{JMÉNO ZPRACOVATELE}}<br>
      <a href="tel:{{TEL}}">{{TEL}}</a><br>
      <a href="mailto:{{EMAIL}}">{{EMAIL}}</a><br>
      <a href="https://www.cstechnologies.cz">www.cstechnologies.cz</a></p></div>
  </div>
  <div class="legal"><span>© 2026 CS Technologies s.r.o. — Nabídka {{ČÍSLO}}</span><span>Důvěrné · určeno výhradně pro {{KLIENT}}</span></div>
</div></footer>
```

---

## Dílky

### HERO (úvod, jednou na začátku)
`.em` = zvýrazněné slovo (gradient). `.meta .m` = rychlá fakta (libovolný počet).

```html
<section class="hero"><div class="wrap">
  <div class="eyebrow"><span class="dot"></span>{{NADTITULEK}}</div>
  <h1>{{NADPIS s <span class="em">zvýrazněním</span>}}</h1>
  <p class="lead">{{PODNADPIS — 1–2 věty}}</p>
  <div class="meta">
    <div class="m"><span>{{ŠTÍTEK}}</span><strong>{{HODNOTA}}</strong></div>
    <div class="m"><span>Cena</span><strong>30 000 Kč</strong></div>
  </div>
</div></section>
```

### SEKCE (obal každé číslované sekce)
Číslo `.sec-num` postupně 01, 02, 03… `.lead-2` = volitelný úvodní odstavec sekce.

```html
<section class="block"><div class="wrap">
  <div class="sec-head"><div class="sec-num">01</div>
    <div><h2>{{NADPIS SEKCE}}</h2><div class="sub">{{volitelný podtitulek}}</div></div></div>
  <p class="lead-2">{{volitelný úvodní odstavec}}</p>

  <!-- sem dílek/dílky níže -->
</div></section>
```

### Karty s ikonou — `.grid.g3` / `.g2`
Emoji ikona, nadpis, popis, volitelný `.out` (zelený výstup). `g3` = 3 ve řádku, `g2` = 2.

```html
<div class="grid g3">
  <div class="card"><div class="icon">⚙️</div><h3>{{NADPIS}}</h3><p>{{popis}}</p><span class="out">→ {{výstup}}</span></div>
</div>
```

### Číslované karty — `.tagn`
Karta s číselným odznakem (fáze, kroky, oblasti).

```html
<div class="grid g2">
  <div class="card"><div class="tagn">1</div><h3>{{NADPIS}}</h3><p>{{popis}}</p></div>
</div>
```

### Odškrtnutý seznam — `.feat`
„Co je v ceně", vlastnosti. `<b>` tučně + `<span>` doplněk.

```html
<div class="card">
  <div class="feat"><div class="ck">✓</div><div><b>{{Vlastnost}}</b> <span>— {{detail}}</span></div></div>
  <div class="feat"><div class="ck">✓</div><div><b>{{Vlastnost}}</b></div></div>
</div>
```

### Čistý seznam odrážek — `ul.clean`
```html
<ul class="clean"><li>{{položka}}</li><li>{{položka}}</li></ul>
```

### Štítky technologií — `.chips`
```html
<div class="chips"><span class="chip">Next.js</span><span class="chip">Medusa</span></div>
```

### Cenový blok — `.price-hero` + `.facts` + `.note`
`.big` velká cena, `<small>` popisek pod ní. `.pill` = zelený štítek vpravo. `.facts` = řada faktů. `.note` = oranžově orámovaná poznámka (orientační čísla apod.).

```html
<div class="price-hero">
  <div class="big">30 000 Kč<small>bez DPH · fixní cena</small></div>
  <span class="pill">do 14 dní</span>
</div>
<div class="facts">
  <div class="fact"><span>Rozsah</span><strong>30–32 hodin</strong></div>
  <div class="fact"><span>Termín</span><strong>do 14 dní</strong></div>
</div>
<div class="note">{{Orientační čísla vždy označ.}}</div>
```

### Kroky postupu — `.steps` (auto-číslování)
```html
<div class="steps">
  <div class="step"><div><b>{{Krok}}</b><p>{{popis}}</p></div></div>
  <div class="step"><div><b>{{Krok}}</b><p>{{popis}}</p></div></div>
</div>
```

### CTA (závěrečná výzva)
Tlačítka `.btn` (plné) a `.btn.ghost` (obrysové). **V tisku se skryjí automaticky.**

```html
<section class="block"><div class="wrap">
  <div class="cta">
    <h2>{{Výzva}}</h2>
    <p>{{krátký text}}</p>
    <a class="btn" href="mailto:{{EMAIL}}">{{EMAIL}}</a>
    <a class="btn ghost" href="tel:{{TEL}}">{{TEL}}</a>
  </div>
</div></section>
```

---

## Co řeší tisk (automaticky, `@media print` v offer-v1.css)

**Tlačítko 🖨 v hlavičce** (vedle přepínače režimu) spustí tisk / uložení do PDF; v tisku se samo skryje.
Nemusíš na to myslet — funguje samo, jakmile použiješ skeleton:

- Skryje chrome: progress lišta, horní lišta, přepínač režimu, tlačítka.
- Přepne na **světlou inkoust-úspornou paletu** bez ohledu na režim obrazovky.
- Ukáže logo s **tmavým textem** (čitelné na bílém papíře).
- Zruší gradientová pozadí, glow, blur a stíny; gradientový text převede na plnou barvu.
- Hlídá **zalomení stránek** — neláme uvnitř karet, kroků, cenového bloku.
- Kontakt zůstává v patičce (tlačítka v CTA zmizí).
