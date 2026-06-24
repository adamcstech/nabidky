# Samolepák.cz — katalog komponent nabídky (offer-v1)

> **Princip:** nabídka Samolepáku se **neskládá z inline stylů**, ale z hotových tříd v
> `/_assets/samolepak/offer-v1.css`. Matěj (vlastník) i agent píší **jen obsah** — vyberou bloky a naplní text.
> Stejná kostra jako [[../cs-technologies/components.md]] / CS Bot, v Samolepák tokenech:
> **světlý default, červená `#dd232e` (hlavní) + navy `#111236` + bílá + šedý akcent `#d9d9d9`, Poppins (800/900).**
>
> **Verzování:** nabídka linkuje `offer-v1.css` → zmražená. Změna designu = `offer-v2.css`.
>
> **Živý vzor (4 pilíře — Design · Materiál · Cena · Dodání):** `https://nabidky.cstech.cz/fbb2bf9d-e3c9-4ed9-a768-85759241af24/`

---

## ⚠️ Obchodní pravidla Samolepáku (DŮLEŽITÉ pro obsah)
- **Ceny vždy S DPH** (B2C/eshop), na rozdíl od CS Tech / CS Bot (bez DPH).
- **3 materiály:** Laminované (lehká fólie) · Lamino Strong (tlustší fólie + silné lepidlo, vozidla/MX) · 3D (zalévané pryskyřicí). **V nabídce ukázat JEN ten, který si klient vybral** — nemást ostatními.
- **Slevy:** laminované a Lamino Strong = bez množstevní slevy (cena dle rozměru). 3D = zvýhodnění při 1/2/10/20 ks, nad 20 ks už ne.
- **⚠️ 3D omezení:** tvar **nesmí mít ostré hrany/rohy** (pryskyřice by vytekla) → u 3D jen zaoblené tvary, NESLIBOVAT nereálné.
- **Doprava zdarma** nad 2 000 Kč. **Smlouvy pro Samolepák NEděláme.**

---

## Skeleton (fixní boilerplate)

```html
<!DOCTYPE html>
<html lang="cs" data-theme="light">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="noindex, nofollow">
<title>{{TITULEK}} | Samolepák.cz</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/_assets/samolepak/offer-v1.css">
</head>
<body>
<div id="progress"></div>
<header class="topbar"><div class="wrap">
  <img class="logo-on-light" src="/_assets/samolepak/logo.svg" alt="Samolepák.cz"><img class="logo-on-dark" src="/_assets/samolepak/logo-dark.svg" alt="Samolepák.cz">
  <div class="tb-right"><span class="tag">Nabídka&nbsp;·&nbsp;{{KLIENT}}</span>
    <button class="toggle" id="printBtn" title="Vytisknout / uložit PDF" aria-label="Tisk">🖨</button>
    <button class="toggle" id="themeBtn" aria-label="Přepnout režim">◑</button></div>
</div></header>

<!-- OBSAH ↓ … sekce z katalogu … OBSAH ↑ -->

<script src="/_assets/samolepak/offer-v1.js"></script>
</body>
</html>
```

**Loga:** světlé pozadí `logo.svg` (červená + navy text), tmavé `logo-dark.svg` (navy text → bílá, červená zůstává). Přepínají se třídami `logo-on-light`/`logo-on-dark`.

---

## Dílky (vrствy katalogu)
`.hero` (+`.eyebrow .dot`, `.em` gradientové slovo) · `.meta .m` · `section.block` + `.sec-head`/`.sec-num` · `.grid.g2`/`.g3` · `.card` (+`.icon`) · `ul.clean` · `.steps`/`.step` (číslované kroky) · `.note` (šedý levý proužek) · `.cta` (červený gradient + `.btn`/`.btn.ghost`). 

### Cenový blok `.price-hero` (navy, výrazný)
```html
<div class="price-hero">
  <div class="big">296 000 Kč <small>vč. DPH · popis</small></div>
  <span class="pill">Doprava zdarma</span>
</div>
```

### Cenová tabulka `table.tbl-wrap > table`
`td.num` = pravé zarovnání čísel. `tr.hl` = zvýrazněný řádek „Celkem" (★).
```html
<div class="tbl-wrap"><table>
  <thead><tr><th>Položka</th><th class="num">Cena / ks (s DPH)</th><th class="num">Cena celkem (s DPH)</th></tr></thead>
  <tbody>
    <tr><td>2 000 ks · 20 × 15 cm</td><td class="num">98 Kč</td><td class="num">196 000 Kč</td></tr>
    <tr class="hl"><td>Celkem</td><td class="num"></td><td class="num">296 000 Kč</td></tr>
  </tbody>
</table></div>
```

---

## Typické pilíře nabídky Samolepák
**Design** (grafika/ořez/tisk) → **Materiál** (jen zvolený + technické parametry) → **Cena** (S DPH, tabulka) → **Dodání** (doprava zdarma, termín ~1–2 týdny) → **CTA**.

## Tisk (automaticky, `@media print` v offer-v1.css)
Tlačítko 🖨 v hlavičce spustí tisk / PDF; v tisku se skryje. Tiskové CSS: čistý A4, tmavé bloky (cena, CTA)
převede na světlé, skryje chrome/tlačítka, hlídá zalomení stránek.
