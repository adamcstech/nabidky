# 📋 Changelog — zásadní změny

Report pro **Adamovu administraci**. Jen **podstatné / strukturní** info:
infra, architektura, struktura, nové brandy, vytvořené/smazané nabídky, konfigurace.
**NE** design a **NE** styl/vyjadřování (to si ladí Standa).

---

## 2026-06-12 — CS Bot design system v1 FINALIZOVÁN + ostrá nabídka Úřad vlády hotová (Adam + Frank)

- **CS Bot `offer-v1.css` → produkční (v1):** sundán „draft" status. Doplněny **custom komponenty voicebot nabídky** jako třídy (dříve inline): `.pill.alt`, `.stage-head`/`.free`, `.fromyou` (box součinnosti), `.card.reco`, `.bignum`, `.phone-box`, `.qlist`, schéma `.flow` (uzly/šipky/vrstvy/výstupy). Nabídka je teď **content-only s třídami**, žádné vlastní inline styly.
- **Tisk:** `@media print` rozšířen o nové komponenty (break-inside). **Tlačítko tisku 🖨** přidáno do hlavičky vedle přepínače režimu (`offer-v1.js` → `window.print()`).
- **Tmavé logo CS Bot:** vytvořeno `logo-dark.svg` (z `logo-full.svg`, modrá `#1E516B` → bílá, magenta zůstává). Nasazeno v hlavičce i patičce pro tmavý režim.
- **Katalog komponent** `brands/cs-bot/components.md` — skeleton + snippety vč. custom dílků (princip pro budoucí CS Bot nabídky / agenta).
- **Nabídka `CSB-2026-06-URADVLADY`** (Úřad vlády ČR) — GUID `05dfa5fe-9890-41d6-bac5-244a1ccd9ecc`, **hotová**. 9 sekcí: technické proporce (2 vrstvy + tok hovoru), spolupráce, demo zdarma (+420 490 000 207), specifikace ve 4 etapách (smlouva+DPA · registrace čísla · Vrstva 1 22 900 Kč · Vrstva 2 RAG 80 000 Kč), kalkulace, provoz (2 sloty 3 000 Kč/měs · hovor 2,50 · přesměr. 0,50 · RAG od 2 000 · support 1 500/hod), otevřené dotazy, doplňky, platnost. Kontakt Standa. Offer i podklady **mimo git**.

## 2026-06-11 — CS Bot design system (draft) + rozjetá nabídka Úřad vlády (Adam + Frank)

- **CS Bot design system — draft:** `www/_assets/cs-bot/offer-v1.css` (+ `@media print`) + `offer-v1.js`. Stejná komponentová kostra jako CS Tech, překlopená do CS Bot tokenů: **světlý default, magenta `#c82973`→tyrkys, jen Poppins**, `.block.tint` střídání bílá/šedá, `table.tbl` pro cenové tabulky. **Zatím draft** — ladí se s Adamem, zamkne se po doladění vzhledu.
- **Nová nabídka (rozpracovaná): AI voicebot pro Úřad vlády ČR** — GUID `05dfa5fe-9890-41d6-bac5-244a1ccd9ecc`, brand CS Bot, content-only. Podklady (struktura + plán callu + shrnutí z callu) v `podklady/cs-bot/urad-vlady/` (mimo git). Stav: **vizuální kostra + orientační ceny** (implementace 80–120 tis., provoz 10 000 Kč/měs · 6 měs. PoC, demo 0 Kč — vše nezávazně, přesné částky a podpoložky zítra).
- **Klíčový koncept (Adamova vize): voicebot pracuje ve DVOU VRSTVÁCH** — (1) přímé znalosti & rozcestník = obecná orientace + nasměrování na ministerstvo; (2) ověřená data pod kontrolou = fakta jen z vložené znalostní báze + guardraily proti halucinacím. Sekce přestavěna na tyto vrstvy + **schéma toku nahoře** (Volající → Voicebot → V1/V2 → Operátor). Pro vládního klienta je to hlavní argument důvěryhodnosti.
- **Demo číslo:** +420 388 000 388 (živé, v sekci 03).

## 2026-06-11 — engine: CS Technologies design system v1 + tisk (Adam + Frank)

- **Centralizace CSS/JS nabídek** — odladěný vzhled CS Tech (z ostrých JAKO SK + Weldis) vytažen do
  **`www/_assets/cs-technologies/offer-v1.css`** (12 kB, vč. `@media print`) a **`offer-v1.js`** (chování:
  přepínač režimu + progress). Nabídka už **negeneruje ~230 řádků inline `<style>`** — jen linkuje centrální vrstvu.
- **Motivace (Adamovo rozhodnutí):** budoucí agent bude tvořit nabídky → fixní design system = **nižší
  spend tokenů** (content-only nabídka ~3× menší: 146 vs 300 řádků, 8,9 vs 25 kB) a **nulová možnost rozbít styl**
  (agent skládá z hotových dílků, píše jen obsah).
- **Verzování = řešení „freeze":** nabídka si přišpendlí `offer-v1.css` → je **zmražená** (sent == printed).
  Změna designu = `offer-v2.css`, staré nabídky zůstanou na v1.
- **Tisk (`@media print`):** světlá inkoust-úsporná paleta bez ohledu na režim, skrytí chrome (lišta/přepínač/
  progress/tlačítka), logo s tmavým textem, zrušení gradient pozadí/glow/stínů, gradient text → plná barva,
  hlídání zalomení stránek. **Plní původní plán „tisková šablona + print CSS"** — jako součást design systemu, ne zvlášť.
- **Katalog komponent** `brands/cs-technologies/components.md` — skeleton + snippet ke každému dílku (slovní zásoba pro agenta/Standu).
- **Živá referenční ukázka** (kitchen sink všech komponent): GUID `502d1d85-f882-4db7-afb0-a4ebd3d6aaca` (mimo git, regenerovatelná).
- **CS Bot / Samolepák:** zatím beze změny — zamknou se do vlastního `offer-v1.css` až po doladění formy (CS Bot se ladí teď).

## 2026-06-10 — nová nabídka: předimplementační analýza Weldis (Adam + Frank)

- **Nabídka `CST-2026-06-WELDIS`** (Weldis, www.weldis.cz) — GUID `e75e2d30-b73e-4dcc-9eaa-6a90e63a60b6`. Brand CS Technologies, kontakt **Standa** (standa.n@cstechnologies.cz / 733 792 905).
- **Typ: předimplementační analýza** (ne vývoj eshopu) — 30 000 Kč bez DPH, 30–32 h, do 14 dní. Struktura 9 sekcí: proč analýza, výstupy, cena/rozsah, tým (Stanislav Novák — obchod/marketing + Adam Švanse — technika), Část I obchodní/marketingová (6 oblastí), Část II technická (7 oblastí vč. SQL Ekonom, B2B, servisní portál), postup, proč, podmínky.
- Zdrojový text od Standy uložen v `podklady/cs-technologies/weldis/` (mimo git). Offer i podklad **gitignored** (privacy model drží — jednorázový push proběhl dřív).

## 2026-06-08 — push ostrých dat na GitHub (pro agenta) (Adam + Frank)

- Na **vědomé rozhodnutí Adama** (private repo) pushnuta **reálná data**: všechny 4 nabídky, **celé `podklady/`** (reálné dokumenty ~6 klientů — Teamline/JAKO CZ smlouva, X2 Sport komunikace, BEST SERIES objednávka, SYNYT analýza, inerez/marine/sodokolín kalkulace) a `NABIDKY-INDEX.md`. Účel: jiná agentní session si to prozkoumá a navrhne strukturu.
- Provedeno přes `git add -f` (cruft `index.php`/`tmp/`/`stats/` vynechán). **`.gitignore` nezměněn** → nové nabídky/podklady zůstávají defaultně mimo git (jednorázové zpřístupnění). Pozn.: data jsou nyní v git historii.

## 2026-06-08 — první OSTRÁ nabídka: JAKO SK / X2 Sport (Adam + Frank)

- **Nová nabídka `CST-2026-06-JAKOSPORT`** (X2 Sport, eshop jako-sport.sk) — GUID `c799a15e-46b7-47dd-a61b-9b613653ac01`.
- **Zadání:** klon ověřeného eshopu JAKO CZ (`jakojedenteam.cz`, naše dílo 2019) pro slovenský JAKO SK. **EasyWeb = záměrná volba** (klon → výjimka). Brand CS Technologies, tmavý režim, 11 sekcí.
- **Cena:** **7 679 € bez DPH** (≈ 180 000 Kč — na stropu limitu), **EUR**, text nabídky **CZ**, **3 měsíční zálohy** (2 679 / 2 500 / 2 500 €), reverse charge pro SK plátce. **Bez SLA**. *(Navýšeno z 7 000 € po revizi s kolegou.)*
- **Napojení:** B2B sklad (p. Prouza) jako druhá instance, dopravci GLS + Packeta, ComGate, feedy Heureka.sk + Google Nákupy, hosting sdílený s JAKO CZ (p. Kulka).
- **AI překlady (sekce 05):** automatický překlad obsahu CZ→SK přes jazykový model, **bez fixní ceny — účtováno za přeložený produkt**, sazba po testech (v nabídce jen domluva, ne číslo).
- **Úhel:** klon od autora originálu vs. konkurenční stavba od nuly (marketér klienta tlačí jiného dodavatele).

## 2026-06-05 — CS Technologies: technologický směr EasyWeb → Medusa (Adam + Frank)

- **Strategický posun:** CS Tech **odchází od vlastního CMS EasyWeb**. Eshopy (jako SYNYT) se nově staví na **MedusaJS** (headless commerce), Next.js/React, PostgreSQL, API-first. Promítnuto do `brands/cs-technologies/brand.md`.
- **SYNYT — nová sekce „Technologie" (07)**: proklientské technologické shrnutí. **Princip: nejdřív potřeba klienta, pak volba tech** (nevážeme se na žádný systém). Mapování (draft): běžné weby → Next.js, velká e-commerce → Medusa. Karty Medusa / Next.js+React (prerender) / **SEO & indexovatelnost** / PostgreSQL / API-first / cloud+CDN; footnote Node/TS, Redis, Docker, CI-CD, GraphQL. U Reactu zdůrazněn **prerender + SEO/indexovatelnost**. Účel: obstát u klientova ajťáka. Zmínky o EasyWebu z nabídky odstraněny. Sekce přečíslovány 01–11.

## 2026-06-05 — Matěj přidán + CS Technologies koncept schválen (Adam + Frank)

- **Nová role: Matěj** — stejná role jako Standa, ale vlastní brand **Samolepák** (ladí i používá). Vlastnictví brandů: Standa → CS Technologies + CS Bot · Matěj → Samolepák. Session start nově: „Adam, Standa, nebo Matěj?".
- **CS Technologies design/styl** — Adamem **relativně schválen jako koncept**. Výhrada: dodat **SVG logo CS Technologies viditelné i na bílém pozadí** (stávající má bílý text → na světlém mizí). Drop → `podklady/cs-technologies/03-loga-a-podklady/`.
- **SYNYT nabídka** — bude se **editovat na místě** (bez zálohy / beze změny GUID). Podklady k implementaci → `podklady/cs-technologies/synyt/`.
- **SYNYT — platební model upraven** (edit na místě): sekce 04 přepsána na **„Harmonogram a platby"** — měsíční etapy podle kalendáře, 3 vysvětlující karty (měsíční etapy / pravidelné zálohy / průběžná kontrola), zálohový kalendář přeznačen na měsíce, zpráva „ne jedna velká částka, ale 4 pravidelné měsíční zálohy". Podmínky (sekce 10) sladěny. Návaznost na budoucí smlouvu. Podklady: `harmonogram synyt.png`, `hodiny-etapy.png`.
- **SYNYT — cena navýšena o výrobní cenu díla** (edit na místě): k hodinovému rozpočtu (216 920 Kč) přidána **výrobní cena díla 690 000 Kč** → celková cena **906 920 Kč bez DPH** (1 097 373 s DPH). Zálohový kalendář přepočítán na 4 měsíční zálohy (výrobní cena rozložena rovnoměrně). *(Hodinová cena byla dle Adama silně podstřelená.)*
- **SYNYT — SLA smlouva jako volitelné rozšíření** (sekce 05): roční poplatek **8 % z výrobní ceny = 55 200 Kč/rok**; garantované reakční doby, prioritní odbavení, **kontinuita týmu & know-how** (řeší „programátor co to dělal už u nás nepracuje"); platba ročně / půlročně +10 % / kvartálně +20 %.
- **SYNYT — provoz vrácen do původního stavu** (sekce 09 bez ceny; dřívější „od 690 Kč/měs" byl omyl — 690k byla výrobní cena, ne měsíční paušál).

## 2026-06-05 — založení projektu (Adam + Frank)

- **Infra:** git repo `adamcstech/nabidky` (RW deploy key, SSH alias `github-nabidky`). Hosting Váš-hosting, docroot `www/`, PHP 8.4, živé na `nabidky.cstech.cz`.
- **Privacy model:** nabídky na nehádatelných **GUID URL**, **mimo git**. V gitu jen engine (loga, šablony, MD).
- **Engine / řád:** `CLAUDE.md` (cíl MVP, role, režim Adam/Standa, onboarding, guardraily) · `templates/nabidka.md` (anatomie nabídky + tech konvence) · `brands/<brand>/brand.md` ×3 (design rulez) · `NABIDKY-INDEX.md` (přehled nabídek, mimo git).
- **Brandy nastaveny:** CS Technologies, CS Bot, Samolepák (loga + design tokeny v `brands/` a `www/_assets/`).
- **Nabídky (demo) vytvořeny:** `CST-2026-06-SYNYT`, `CSB-2026-06-BEST` (přepsáno na světlou verzi), `SAM-2026-06-POLICIE`. GUIDy viz `NABIDKY-INDEX.md`.
- **Session chování:** Frank se na startu ptá „Adam, nebo Standa?" a přepíná režim.
- **Rozdělení rolí:** Standa = tvorba nabídek + ladění brandu/komunikace. Adam = napojení na agenta, celková administrace, mazání nabídek.
- **Terminál (otevřené):** tmux myš ponechána **ON** (scroll funguje). Klik‑na‑kurzor jako na eni04 je na straně **Warpu** — doladíme v neděli společně se Standou.
