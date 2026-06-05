# 📋 Changelog — zásadní změny

Report pro **Adamovu administraci**. Jen **podstatné / strukturní** info:
infra, architektura, struktura, nové brandy, vytvořené/smazané nabídky, konfigurace.
**NE** design a **NE** styl/vyjadřování (to si ladí Standa).

---

## 2026-06-05 — Matěj přidán + CS Technologies koncept schválen (Adam + Frank)

- **Nová role: Matěj** — stejná role jako Standa, ale vlastní brand **Samolepák** (ladí i používá). Vlastnictví brandů: Standa → CS Technologies + CS Bot · Matěj → Samolepák. Session start nově: „Adam, Standa, nebo Matěj?".
- **CS Technologies design/styl** — Adamem **relativně schválen jako koncept**. Výhrada: dodat **SVG logo CS Technologies viditelné i na bílém pozadí** (stávající má bílý text → na světlém mizí). Drop → `podklady/cs-technologies/03-loga-a-podklady/`.
- **SYNYT nabídka** — bude se **editovat na místě** (bez zálohy / beze změny GUID). Podklady k implementaci → `podklady/cs-technologies/synyt/`.
- **SYNYT — platební model upraven** (edit na místě): sekce 04 přepsána na **„Harmonogram a platby"** — měsíční etapy podle kalendáře, 3 vysvětlující karty (měsíční etapy / pravidelné zálohy / průběžná kontrola), zálohový kalendář přeznačen na měsíce, zpráva „ne jedna velká částka, ale 4 pravidelné měsíční zálohy". Podmínky (sekce 10) sladěny. Návaznost na budoucí smlouvu. Podklady: `harmonogram synyt.png`, `hodiny-etapy.png`.

## 2026-06-05 — založení projektu (Adam + Frank)

- **Infra:** git repo `adamcstech/nabidky` (RW deploy key, SSH alias `github-nabidky`). Hosting Váš-hosting, docroot `www/`, PHP 8.4, živé na `nabidky.cstech.cz`.
- **Privacy model:** nabídky na nehádatelných **GUID URL**, **mimo git**. V gitu jen engine (loga, šablony, MD).
- **Engine / řád:** `CLAUDE.md` (cíl MVP, role, režim Adam/Standa, onboarding, guardraily) · `templates/nabidka.md` (anatomie nabídky + tech konvence) · `brands/<brand>/brand.md` ×3 (design rulez) · `NABIDKY-INDEX.md` (přehled nabídek, mimo git).
- **Brandy nastaveny:** CS Technologies, CS Bot, Samolepák (loga + design tokeny v `brands/` a `www/_assets/`).
- **Nabídky (demo) vytvořeny:** `CST-2026-06-SYNYT`, `CSB-2026-06-BEST` (přepsáno na světlou verzi), `SAM-2026-06-POLICIE`. GUIDy viz `NABIDKY-INDEX.md`.
- **Session chování:** Frank se na startu ptá „Adam, nebo Standa?" a přepíná režim.
- **Rozdělení rolí:** Standa = tvorba nabídek + ladění brandu/komunikace. Adam = napojení na agenta, celková administrace, mazání nabídek.
- **Terminál (otevřené):** tmux myš ponechána **ON** (scroll funguje). Klik‑na‑kurzor jako na eni04 je na straně **Warpu** — doladíme v neděli společně se Standou.
