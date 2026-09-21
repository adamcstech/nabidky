# 🟢 CS Technologies — design rulez

> **Co je zamčené 🔒** drží konzistenci napříč nabídkami. **Co Standa ladí 🎛️** je prostor pro jeho vkus.
> Jakmile Standa baseline doladí, **každá další nabídka tohoto brandu musí vypadat stejně** (mění se jen obsah/prvky).

Živé demo: `https://nabidky.cstech.cz/f2e35887-2b14-4d85-9dfa-21987f8f4bdf/`

## Identita & subjekt
- **Co prodáváme:** výroba webů, eshopů a custom webových řešení na **moderních open-source technologiích**.
- **Technologie (důležité — PRINCIP):** **nevážeme se na žádný systém** (ani EasyWeb, ani výhradně Medusu). Nejdřív zjistíme potřebu klienta a teprve pak zvolíme nejvhodnější moderní tech. Pracovní mapování *(zatím draft)*: **běžné weby/prezentace → Next.js**, **velká e-commerce → Medusa (headless)**, **obsahový web s redakcí na šabloně → WordPress**; dále PostgreSQL, Node/TS, API-first, cloud/CDN. U Reactu/frontendu **vždy zmínit prerender + SEO/indexovatelnost** (rozptýlit obavu „React = špatné SEO"). Každá CS Tech nabídka má mít sekci **„Technologie"** psanou **proklientsky** (ať obstojí u klientova ajťáka a nepokazí SoftMedia tón). Workflow: Adam řekne klientovi zvolený stack → Frank ho rozvede a prodá.
- **Právní subjekt:** CS Technologies s.r.o., Ak. Heyrovského 1178/6, 500 03 Hradec Králové, IČO 27463249, DIČ CZ27463249.
- **Kontakt v nabídce (CTA + patička) = podle toho, KDO nabídku připravuje:**
  - **Adam** → adam@cstechnologies.cz · +420 775 715 261
  - **Standa** → standa.n@cstechnologies.cz · +420 733 792 905
  - Web vždy www.cstechnologies.cz. Obecná `info@cstechnologies.cz` jen mimo nabídky.
- Jednatel: Adam Švanse.

## 🔒 Design (zamčené)
- **Logo (POZOR — dvě varianty kvůli přepínači režimu):** `/_assets/cs-technologies/logo.svg` (bílý text → **tmavé** pozadí) + `/_assets/cs-technologies/logo-dark.svg` (navy text → **světlé** pozadí; barevná ikona zůstává). V nabídce vlož **obě** a přepínej třídami `logo-on-dark` / `logo-on-light` (CSS dle `data-theme`). Jedno logo přes oba režimy **nestačí** — bílý text na světlém pozadí zmizí.
- **Paleta:** navy báze `#061b31`, zelená `#0f9b4a`, tyrkysová `#02d1cb`, limetka `#deea01`, oranžová `#f06c1a`. Akcent = gradient zelená→tyrkysová.
- **Fonty:** Poppins (text) + Roboto Slab (display nadpisy).
- **Layout:** číslované sekce (01–11), velká ghost čísla, feature karty, ceníkové tabulky.
- **Režim: VÝCHOZÍ JE TMAVÝ 🔒** *(rozhodl Adam 21. 9. 2026 — dřív otevřená otázka, teď zavřená.)*
  Každá CS Tech nabídka se otevírá v tmavém režimu: `<html lang="cs" data-theme="dark">`. Světlý režim
  zůstává dostupný přes přepínač ◐ pro toho, kdo si ho přepne, a tisk jede vždy světle bez ohledu na režim.
  **Na rozdíl od CS Bot a Samolepáku, které jsou světlé** — tmavá je poznávací znamení CS Tech.

## 🎛️ Standa ladí
- Volba akcentní barvy z palety, množství dekorativních prvků, ikony.
- *(Výchozí režim už Standa neladí — je zamčený na tmavý, viz výše.)*

## WordPress — kdy ano (třetí větev, schváleno Adamem 2026-09-21)

**Není to ústupek, je to správná volba pro určitý typ zakázky.** WordPress zvol, když platí většina z toho:

- **Obsahový web s redakcí** — klient chce sám psát články, aktuality, judikaturu; potřebuje kategorie a štítky.
- **Staví se na hotové šabloně** (klient přinese vzor „chceme to jako X"), ne na custom grafice od nuly.
- **Menší rozpočet** (řádově desítky tisíc) — Next.js + headless CMS by zadání předražil.
- **Klient si to bude spravovat sám** a chce běžné, dostupné prostředí, na které najde lidi.

**WordPress naopak nevol,** když jde o e-shop většího rozsahu, silné integrace do firemních systémů, aplikační
logiku nad rámec obsahu, nebo když klient výslovně chce moderní JS stack.

**V nabídce ho prodávej proklientsky** — redakce bez programátora, rychlost (cache, WebP), SEO struktura
a strukturovaná data u článků, bezpečnost a pravidelné aktualizace. **Neomlouvej se za něj.**

**Předání u WordPressu = PDF návod, NE školení.** Ke každé WP implementaci připravujeme **PDF návod psaný
přímo pro daný web** (kde co editovat, krok za krokem). Do nabídek proto **nepiš „zaškolení" ani „školení
redakce"** — píše se *„Předání a PDF návod k editaci"*. Je to pro klienta lepší (návod nezapomene, může ho
předat novému člověku) a pro nás levnější než opakované osobní školení.

## EasyWeb — politika útlumu
Cíl: **nové zakázky na nových technologiích.** ~80 % nových poptávek → moderní stack. **Do konce roku přestáváme EasyWeb prodávat**; existující EasyWeby dál udržujeme (klidně X let). EasyWeb pro novou zakázku zvol **jen výjimečně**:
- **Redesign**, kde klient má EasyWeb rád / umí ho a nechce měnit základ.
- **Hodně custom řešení**, kde jsme si jistí, že EasyWeb umožní víc než otevřené platformy.

Jinak default = moderní tech a velký fokus na sekci „Technologie".

## Styl komunikace (tone of voice)
„Jsme digitální vývojáři." · „Funkční e-business a projekty, co mají skutečný smysl." · „Řešení přizpůsobujeme vašim procesům." → odborný, ale přátelský, partnerský; mluví o procesech klienta, ne o sobě.

## Prvky nabídky (typicky)
Porozumění zadání → co web/eshop umí → rozsah a cena (**hodinový rozpočet + výrobní cena díla**) → harmonogram a **platby (měsíční zálohy)** → volitelná rozšíření (**vč. SLA**) → integrace → **technologie** → předpoklady → kroky → provoz/hosting → podmínky.

## Cenové signály (z reálných nabídek)
Grafik/kodér ~1 400 Kč/h · programátor ~1 800 Kč/h · account/řízení ~1 400 Kč/h. **Výrobní cena díla** se účtuje navíc k hodinám (samotné hodiny bývají podstřelené). Platba = **pravidelné měsíční zálohy** podle kalendáře (ne 50/50). **SLA smlouva** volitelně = **8 % z výrobní ceny ročně** (garance, reakční doby, prioritní odbavení, kontinuita týmu; platba ročně / půlročně +10 % / kvartálně +20 %). Smlouvy: **ANO** (CS Tech smlouvy děláme).
