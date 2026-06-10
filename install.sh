#!/usr/bin/env bash
# Instalator Skilli Caterings — kopiuje skille do ~/.claude/skills.
# Użycie:
#   curl -fsSL https://raw.githubusercontent.com/codixs/caterings-skills/main/install.sh | bash
set -euo pipefail

REPO="https://github.com/codixs/caterings-skills"
DEST="${CLAUDE_SKILLS_DIR:-${HOME}/.claude/skills}"

echo "Instaluję Skille Caterings → ${DEST}"
mkdir -p "${DEST}"

TMP="$(mktemp -d)"
trap 'rm -rf "${TMP}"' EXIT
git clone --depth 1 "${REPO}" "${TMP}" >/dev/null 2>&1

cp -R "${TMP}"/skills/* "${DEST}"/
echo "Gotowe. Zainstalowane skille:"
ls -1 "${DEST}" | sed 's/^/  • /'
echo "Zrestartuj aplikację Claude / Claude Code, aby je wykryć."
