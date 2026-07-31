#!/usr/bin/env bash
# Install all skills from this repository into a global skills directory.
#
# By default:
#   ~/.agents/skills
#
# Override destination:
#   AGENTS_HOME=~/.config/my-agent ./setup.sh
#   SKILLS_DEST=/path/to/skills ./setup.sh
#
# Re-run after pulling updates.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$REPO_DIR/skills"

# Priority:
# 1. SKILLS_DEST
# 2. AGENTS_HOME/skills
# 3. ~/.agents/skills
SKILLS_DEST="${SKILLS_DEST:-${AGENTS_HOME:-$HOME/.agents}/skills}"

if [[ ! -d "$SKILLS_SRC" ]]; then
    echo "❌ Could not find skills directory:"
    echo "   $SKILLS_SRC"
    exit 1
fi

mkdir -p "$SKILLS_DEST"

installed=()

for skill_path in "$SKILLS_SRC"/*/; do
    [[ -f "$skill_path/SKILL.md" ]] || continue

    skill_name="$(basename "$skill_path")"

    rm -rf "$SKILLS_DEST/$skill_name"
    cp -R "$skill_path" "$SKILLS_DEST/$skill_name"

    installed+=("$skill_name")
done

if [[ ${#installed[@]} -eq 0 ]]; then
    echo "No skills found."
    exit 1
fi

echo
echo "✅ Installed ${#installed[@]} skill(s) to:"
echo "   $SKILLS_DEST"
echo

for skill in "${installed[@]}"; do
    echo " • $skill"
done

echo
echo "Restart your AI coding agent (or start a new session) to load the updated skills."