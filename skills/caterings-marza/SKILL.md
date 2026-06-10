---
name: caterings-marza
description: Diagnoza marży (food cost) cateringu dietetycznego — które diety zarabiają, a które dokładają. Używaj, gdy użytkownik pyta "która dieta dokłada do interesu", "marża per dieta", "food cost", "co tnie zysk", "które warianty są pod kreską", "czy podnieść ceny", "rentowność diet". Orkiestruje narzędzia Caterings i wskazuje, gdzie i jak poprawić marżę.
---

# Diagnoza marży diet (Caterings)

Cel: pokazać, **które diety realnie zarabiają, a które dokładają**, i podpowiedzieć
ruch (cena vs receptura). Dane z narzędzi konektora Caterings; Ty orkiestrujesz i
interpretujesz — nie liczysz marży sam (robi to serwer).

## Kiedy użyć
„Która dieta dokłada?", „marża per dieta", „food cost", „co tnie zysk?", „które
warianty pod kreską?", „czy podnieść ceny diety X?".

## Kolejność narzędzi
1. `caterings:gross_margin` — marża żywnościowa ogółem (punkt odniesienia).
2. `caterings:diet_margin` — marża per dieta, posortowana, z flagą niskiej marży.
   Trailing ~2 tygodnie (limit API koszyków) — zaznacz to.
3. `caterings:menu_fatigue` — jeśli niska marża idzie w parze z niskimi ocenami
   dań, to sygnał do wymiany dania, nie tylko ceny.

## Jak przedstawić
- **Wniosek (1 zdanie):** np. „3 warianty są pod kreślą na food cost — Keto 2000
  ciągnie średnią w dół."
- **Tabela diet:** dieta · marża % · (flaga niskiej marży). Najsłabsze na górze.
- **Co zrobić:** dla diet pod kreską zaproponuj kierunek — podniesienie ceny,
  przeliczenie gramatur/receptury, albo wycofanie wariantu. Jeśli `menu_fatigue`
  pokazuje też słabe oceny dania w tej diecie — rekomenduj wymianę dania.

## Benchmarki
Odnoś marżę/food cost do norm z `references/benchmarki.md` (np. food cost
~30–35% COGS, marża kontrybucyjna ~26–27% przychodu w meal-kit). Zaznacz, że to
proxy branżowy (gł. HelloFresh), nie dokładna norma diety pudełkowej / PL.

## Zasady
- Marża i food cost pochodzą wyłącznie z narzędzi; nie szacuj ręcznie.
- Zaznacz okno czasowe diet_margin (trailing ~14 dni) — to nie cały miesiąc.
- Procenty z 1 miejscem, kwoty w zł z separatorem.
- Najpierw wniosek i decyzja, potem tabela.
