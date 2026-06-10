# Caterings Analytics — Agent Skills

Cienkie **Claude Agent Skills** (playbooki) dla konektora MCP **Caterings**.
Każdy skill to prezentacja + orkiestracja (które narzędzie kiedy odpalić, jak
złożyć raport). **Zero formuł** — wszystkie obliczenia (marża, churn, LTV/CAC)
zostają po stronie serwera MCP.

## Skille
- **caterings-przeglad-ceo** — jednostronicowy przegląd zarządczy (przychód,
  zamówienia, marża, gotówka, trend, churn).
- **caterings-ratuj-churn** — priorytetyzowana lista klientów do uratowania.
- **caterings-marza** — diagnoza marży diet (które dokładają i co z tym zrobić).

## Instalacja

### A) Claude Code — marketplace (rekomendowane, z aktualizacjami)
```
/plugin marketplace add codixs/caterings-skills
/plugin install caterings
```
Aktualizacja: `/plugin marketplace update caterings`.

### B) Terminal — z repo (jedna komenda)
```
curl -fsSL https://raw.githubusercontent.com/codixs/caterings-skills/main/install.sh | bash
```
Kopiuje skille do `~/.claude/skills`. Ponów komendę, aby zaktualizować.

### C) Ręcznie (git clone)
```
git clone https://github.com/codixs/caterings-skills
cp -R caterings-skills/skills/* ~/.claude/skills/
```

### D) claude.ai / Claude Desktop — upload
Pobierz ZIP: <https://github.com/codixs/caterings-skills/archive/refs/heads/main.zip>,
rozpakuj i wgraj wybrany folder skilla w **Settings → Capabilities → Skills**.

## Uwaga
Sam konektor MCP Caterings działa BEZ tych skilli — serwer dostarcza podstawowe
playbooki automatycznie. Skille to opcjonalny upgrade dla bogatszych scenariuszy.
