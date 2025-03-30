# Personal Neovim Configuration

![Image description](./img.png)

This repository contains my personal configuration files for Neovim, designed to optimize and enhance the editing experience.

## Repository Structure

- `init.lua`: Main configuration file that initializes and sets up plugins and custom settings.
- `lua/`: Directory containing additional Lua modules used in the configuration.

## Installation

1. **Clone the repository:**

   ```sh
   git clone [https://github.com/crahantan/nvim-dotfiles.git](https://github.com/crahantan/nvim-dotfiles.git) ~/.config/nvim
   ```

2. **Start Neovim:**

   Upon opening Neovim, the plugins specified in the configuration will be installed automatically.

## Used Plugins

The plugins included in this configuration are located in the `lua/plugins/` directory. Some of them are:

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter):** Provides advanced syntax highlighting and code parsing improvements.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig):** Configuration for language servers in Neovim.
- **[neotree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim):** Advanced file explorer.
- **[mason.nvim](https://github.com/williamboman/mason.nvim):** Tool manager for LSP, DAP, and linters.
- **[lazy.nvim](https://github.com/folke/lazy.nvim):** Modern and efficient package manager for Neovim.
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim):** Highly customizable status line.
- **[cmp-nvim](https://github.com/hrsh7th/nvim-cmp):** Advanced auto-completion for Neovim.
- **[cmp-buffer](https://github.com/hrsh7th/cmp-buffer):** Auto-completion source based on the current buffer.
- **[cmp-path](https://github.com/hrsh7th/cmp-path):** Auto-completion of file paths.
- **[cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline):** Auto-completion in the Neovim command line.
- **[luasnip](https://github.com/L3MON4D3/LuaSnip):** Snippet engine for Neovim.
- **[comment.nvim](https://github.com/numToStr/Comment.nvim):** Facilitates adding and removing comments in code.
- **[pineapple.nvim](https://github.com/crahantan/pineapple.nvim):** Custom plugin to improve productivity in Neovim.

## Custom Keybindings

### Key Configuration

- **Leader (`<leader>`)**: `vim.g.mapleader = ' '`

### Normal Mode

- **`<leader>w`**: Save current file (`:write`)
- **`<leader>q`**: Close Neovim (`:quit`)
- **`<leader>e`**: Toggle file explorer (`:Neotree toggle`)
- **`<leader>l`**: Open Lazy (`:Lazy`)
- **`<leader>m`**: Open Mason (`:Mason`)
- **`<leader>t`**: Open terminal (`:terminal`)
- **`<leader>h`**: Reveal in Neotree (`:Neotree reveal`)
- **`<leader>bn`**: Go to the next buffer (`:bnext`)
- **`<leader>bb`**: Go to the previous buffer (`:bprevious`)
- **`<leader>bd`**: Close buffer (`:bd`)
- **`<leader>p`**: Execute Pineapple (`:Pineapple`)

## Customization

To adjust this configuration to your needs:

- **Modify `init.lua`**: Adjust parameters and options according to your preferences.
- **Edit files in `lua/`**: Customize specific modules for additional functionalities.

