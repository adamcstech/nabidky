# CS Bot — katalog komponent nabídky (offer-v1)

> **Princip:** nabídka CS Bot se **neskládá z inline stylů**, ale z hotových tříd v
> `/_assets/cs-bot/offer-v1.css`. Agent (i Standa/Matěj) píše **jen obsah** — vybere bloky z tohoto
> katalogu a naplní text. Vzhled ani tisk nemůže rozbít. Stejná kostra jako [[../cs-technologies/components.md]],
> jen v CS Bot tokenech: **světlý default, magenta `#c82973`→tyrkys, jen Poppins, `.tint` střídání bílá/šedá.**
>
> **Verzování:** nabídka linkuje `offer-v1.css` → je tím **zmražená**. Změna designu = `offer-v2.css`.
> *(Design je zamčený — měň obsah, ne vzhled. Zásah do CSS = s Adamem.)*
>
> **Živý vzor (kompletní voicebot nabídka, 9 sekcí):** `https://nabidky.cstech.cz/05dfa5fe-9890-41d6-bac5-244a1ccd9ecc/`

---

## Skeleton (fixní boilerplate)

```html
<!DOCTYPE html>
<html lang="cs" data-theme="light">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="noindex, nofollow">
<title>{{TITULEK}} | CS Bot</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/_assets/cs-bot/offer-v1.css">
</head>
<body>
<div id="progress"></div>

<header class="topbar"><div class="wrap">
  <img class="logo-on-light" src="/_assets/cs-bot/logo-full.svg" alt="CS Bot">
  <img class="logo-on-dark" src="/_assets/cs-bot/logo-dark.svg" alt="CS Bot">
  <div class="tb-right"><span class="tag">Nabídka&nbsp;·&nbsp;{{KLIENT}}</span>
    <button class="toggle" id="printBtn" title="Vytisknout / uložit PDF" aria-label="Tisk">🖨</button>
    <button class="toggle" id="themeBtn" title="Přepnout světlý/tmavý režim" aria-label="Přepnout režim">◐</button></div>
</div></header>

<!-- OBSAH ↓ … sekce z katalogu … OBSAH ↑ -->

<script src="/_assets/cs-bot/offer-v1.js"></script>
</body>
</html>
```

**Loga:** světlé pozadí `logo-full.svg` (magenta + tmavý text), tmavé `logo-dark.svg` (magenta + bílý text — modrá `#1E516B` přebarvená na bílou).

**Sekce:** `<section class="block">` / `<section class="block tint">` (střídej bílá/šedá) + `.sec-head` s `.sec-num`.

---

## Sdílené dílky (stejné jako CS Technologies)
`.hero` · `.meta .m` · `.sec-head`+`.sec-num` · `.grid.g2`/`.g3` · `.card` (+`.icon`/`.tagn`) · `.feat` (odškrtnutý seznam) · `ul.clean` · `.chips`/`.chip` · `.price-hero` (+`.big`/`small`) · `.pill` · `.facts`/`.fact` · `.note` · `.steps`/`.step` · `.cta` · `.btn`/`.btn.ghost` · `table.tbl` (+`td.num`) · patička `footer`/`.foot`/`.legal`. Viz katalog CS Technologies.

---

## Custom komponenty CS Bot (voicebot nabídka)

### `.pill.alt` — sekundární štítek (modrozelený)
Pro popisky vrstev/etap (Vrstva 1, Etapa 1…). `.pill` (magenta) = primární, `.pill.alt` = sekundární.
```html
<span class="pill alt">Vrstva 1</span>   <span class="pill">Vrstva 2</span>
```

### `.stage-head` — hlavička etapové karty
Štítek vlevo, cena (`.pill`) nebo „v ceně nefiguruje" (`.free`) vpravo.
```html
<div class="card">
  <div class="stage-head">
    <span class="pill alt">Etapa 3</span>
    <span class="pill">22 900 Kč</span>           <!-- nebo: <span class="free">v ceně nefiguruje</span> -->
  </div>
  <h3>Vrstva 1 — základní komunikace</h3>
  <p>…</p>
  <div class="feat">…</div>
  <div class="fromyou"><b>Od vás:</b> …součinnost klienta…</div>
</div>
```

### `.fromyou` — box „Od vás:" (součinnost klienta)
Zvýrazní, co musí dodat klient. Patří do etapové/specifikační karty.
```html
<div class="fromyou"><b>Od vás:</b> zdroje a přístupy, schválení obsahu…</div>
```

### `.card.reco` + `.bignum` — doporučená karta s velkou cenou
```html
<div class="card reco">
  <span class="pill">Doporučení</span>
  <h3>2 sloty</h3>
  <p>…</p>
  <div class="bignum">3 000 Kč <small>/ měs</small></div>
</div>
```

### `.phone-box` — výrazné telefonní číslo (demo)
```html
<div class="phone-box">
  <div class="label">Telefonní číslo k vyzkoušení</div>
  <a href="tel:+420XXXXXXXXX">+420 XXX XXX XXX</a>
</div>
```

### `.qlist` — seznam otázek (odrážka + visutý odsazení)
```html
<ul class="qlist">
  <li><b>První výraz</b> — zbytek otázky…</li>
  <li><b>Další</b></li>
</ul>
```

### `.flow` — schéma „tok hovoru"
Uzly (`.flow-node`, ikona robota `.icon.bot`), šipky (`.flow-arrow`), dvě vrstvy (`.flow-layers`/`.flow-layer.l1`/`.l2` s `.desc`), výstupy (`.flow-out`).
```html
<div class="card flow">
  <div class="flow-node"><div class="icon">📞</div><b>Volající</b></div>
  <div class="flow-arrow">→</div>
  <div class="flow-node"><div class="icon bot">🤖</div><b>Voicebot</b></div>
  <div class="flow-arrow">→</div>
  <div class="flow-layers">
    <div class="flow-layer l1"><span class="pill alt">Vrstva 1</span><b>Orientace</b><span class="desc">…</span></div>
    <div class="flow-layer l2"><span class="pill">Vrstva 2</span><b>Ověřená data</b><span class="desc">…</span></div>
  </div>
  <div class="flow-arrow">→</div>
  <div class="flow-out"><span><span>💾</span> Záznam</span><span><span>📝</span> Transkripce</span></div>
</div>
```

---

## Tisk (automaticky, `@media print` v offer-v1.css)
Tlačítko 🖨 v hlavičce (vedle přepínače režimu) spustí tisk. Tiskové CSS samo: světlá inkoust-úsporná
paleta bez ohledu na režim, skryje chrome (lišta/přepínač/tlačítko tisku/progress/CTA tlačítka), logo
s tmavým textem, zruší gradient pozadí/glow/stíny, hlídá zalomení stránek (vč. `.flow`, `.fromyou`, `.phone-box`).

---

## Typické prvky nabídky CS Bot
Technické proporce platformy + dvě vrstvy (V1 orientace/rozcestník · V2 ověřená data/RAG) → jak spolupráce
probíhá → demo zdarma → specifikace implementace (etapy, součinnost `.fromyou`) → kalkulace → provoz
(sloty/sazby) → otevřené dotazy → volitelné doplňky → platnost. Smlouvy: **ANO** (CS Bot smlouvy děláme).
