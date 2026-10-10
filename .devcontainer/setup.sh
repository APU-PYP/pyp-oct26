#!/usr/bin/env bash
# Runs once when the codespace is created (postCreateCommand).
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"

python -m pip install --user --quiet --disable-pip-version-check -r "$here/requirements.txt"

for cmd in create check help; do
  chmod +x "$here/bin/$cmd"
  sudo ln -sf "$here/bin/$cmd" "/usr/local/bin/$cmd"
done

# One-line hint in every new terminal.
if ! grep -q "Type help" "$HOME/.bashrc" 2>/dev/null; then
  echo 'echo "Type help to see the lab commands."' >> "$HOME/.bashrc"
fi
