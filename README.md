# nvim-config

My Neovim configuration. [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management, tokyonight-moon recolored to the same midnight-blue palette as my [medianoche](https://github.com/oscartiz/medianoche) macOS rice.

## Install

One-liner:

```sh
curl -fsSL https://raw.githubusercontent.com/oscartiz/nvim-config/main/install.sh | bash
```

Existing `~/.config/nvim` is moved to `~/.config/nvim.bak.<timestamp>` before cloning, then plugins are bootstrapped headlessly with `Lazy! sync`.

## Requirements

- Neovim >= 0.9
- git
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- Optional: a terminal with the Kitty graphics protocol (Ghostty, Kitty) for inline image rendering

## What's inside

| Area | Plugins |
|---|---|
| Colorscheme | tokyonight (moon), custom midnight background (`#0f1322`) |
| Files & search | neo-tree, telescope |
| Code | nvim-treesitter, nvim-lspconfig + mason (`lua_ls`, `ts_ls`, `pyright`), nvim-cmp + LuaSnip |
| Git | gitsigns |
| UI | lualine, noice + nvim-notify, which-key, alpha dashboard |
| Terminal | toggleterm |
| Images | image.nvim — opens PNG/JPG/GIF/WebP inline via the Kitty graphics protocol |

## Keymaps

Leader is `<Space>`.

| Key | Action |
|---|---|
| `<leader>e` | Toggle file explorer (neo-tree) |
| `<leader>ff` / `<leader>fg` / `<leader>fb` | Find files / live grep / buffers (telescope) |
| `<C-h/j/k/l>` | Window navigation (also from terminal mode) |
| `<S-h>` / `<S-l>` | Previous / next buffer |
| `<C-Up/Down/Left/Right>` | Resize splits |
| `<C-\>` | Toggle terminal |
| `<` / `>` in visual mode | Indent and stay in visual mode |
| `<A-j>` / `<A-k>` | Move selected lines down / up |

## Layout

```
init.lua              # bootstrap lazy.nvim, load user modules
lua/user/options.lua  # editor options
lua/user/keymaps.lua  # keymaps
lua/user/plugins.lua  # plugin specs
install.sh            # clone + headless plugin sync
```
