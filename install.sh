#!/usr/bin/env bash
set -euo pipefail

REPO="https://github.com/oscartiz/nvim-config.git"
TARGET="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

if [ -e "$TARGET" ]; then
  BACKUP="$TARGET.bak.$(date +%Y%m%d%H%M%S)"
  echo "Backing up existing $TARGET -> $BACKUP"
  mv "$TARGET" "$BACKUP"
fi

echo "Cloning $REPO -> $TARGET"
git clone "$REPO" "$TARGET"

echo "Bootstrapping plugins with lazy.nvim..."
nvim --headless "+Lazy! sync" +qa

echo "Done."
