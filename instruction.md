# Setup instructions for agents

## Goal

Install this repository as the active Neovim (LazyVim) and Ghostty configuration on macOS. Preserve any existing user configuration before replacing it.

## Requirements

- macOS
- Homebrew
- Git

## Automated setup

From the repository root, run the following commands in order:

```sh
brew install neovim ghostty
brew install --cask font-consolas-for-powerline

mkdir -p "$HOME/.config"
test -d "$HOME/.config/nvim" && mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup.$(date +%Y%m%d%H%M%S)"
test -f "$HOME/.config/ghostty/config" && mv "$HOME/.config/ghostty/config" "$HOME/.config/ghostty/config.backup.$(date +%Y%m%d%H%M%S)"

cp -R nvim "$HOME/.config/nvim"
mkdir -p "$HOME/.config/ghostty"
cp ghostty/config "$HOME/.config/ghostty/config"

nvim --headless "+Lazy! sync" "+qa"
```

Open a new Ghostty window after installation. Ghostty supplies the editor font for terminal Neovim, and this configuration selects `Consolas for Powerline` at 14 pt.

## Verification

```sh
fc-match "Consolas for Powerline"
nvim --headless "+lua print(vim.g.colors_name)" "+qa"
```

Expected Neovim output: `mariana`.

## Security rules

- Never copy, commit, upload, or use private keys, API tokens, passwords, SSH configuration, or other credentials from a user machine.
- The Consolas-for-Powerline package is installed through Homebrew; do not add font binaries to this repository.
- Review `git status` and `git diff --cached` before every commit and push.
