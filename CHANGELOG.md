# 📋 Changelog — zásadní změny

Report pro **Adamovu administraci**. Jen **podstatné / strukturní** info:
infra, architektura, struktura, nové brandy, vytvořené/smazané nabídky, konfigurace.
**NE** design a **NE** styl/vyjadřování (to si ladí Standa).

---

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
