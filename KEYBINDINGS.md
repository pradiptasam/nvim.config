# Neovim Keybindings Reference

**Leader key: `Space`**

---

## Table of Contents

- [General](#general)
- [Window & Tab Management](#window--tab-management)
- [File Explorer (nvim-tree)](#file-explorer-nvim-tree)
- [Fuzzy Finding (Telescope)](#fuzzy-finding-telescope)
- [LSP (Language Server)](#lsp-language-server)
- [Diagnostics & Trouble](#diagnostics--trouble)
- [Completion (nvim-cmp)](#completion-nvim-cmp)
- [Copilot Ghost Text](#copilot-ghost-text)
- [CopilotChat](#copilotchat)
- [Claude Code](#claude-code)
- [Git](#git)
- [Harpoon](#harpoon)
- [Treesitter](#treesitter)
- [Terminal (Floaterm)](#terminal-floaterm)
- [Miscellaneous](#miscellaneous)

---

## General

| Key | Mode | Action |
|-----|------|--------|
| `jk` | Insert | Exit insert mode |
| `<leader>nh` | Normal | Clear search highlights |
| `<leader>+` | Normal | Increment number |
| `<leader>-` | Normal | Decrement number |

---

## Window & Tab Management

### Splits

| Key | Action |
|-----|--------|
| `<leader>sv` | Split window vertically |
| `<leader>sh` | Split window horizontally |
| `<leader>se` | Make splits equal size |
| `<leader>sx` | Close current split |
| `<leader>sm` | Maximize/minimize current split |

### Tabs

| Key | Action |
|-----|--------|
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn` | Go to next tab |
| `<leader>tp` | Go to previous tab |
| `<leader>tf` | Open current buffer in new tab |

---

## File Explorer (nvim-tree)

| Key | Action |
|-----|--------|
| `<leader>ee` | Toggle file explorer |
| `<leader>ef` | Toggle explorer on current file |
| `<leader>ec` | Collapse file explorer |
| `<leader>er` | Refresh file explorer |

> Inside the tree: `a` new file, `d` delete, `r` rename, `Enter` open

---

## Fuzzy Finding (Telescope)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files in cwd |
| `<leader>fr` | Find recent files |
| `<leader>fs` | Search string in cwd (live grep) |
| `<leader>fc` | Search string under cursor |
| `<leader>ft` | Find TODOs |
| `<leader>fm` | Resume last Telescope search |
| `<leader>fh` | Show Harpoon marks |
| `<leader>fb` | Show open buffers |

### Inside Telescope

| Key | Action |
|-----|--------|
| `<C-k>` / `<C-j>` | Move up/down in results |
| `<C-q>` | Send selected to quickfix (Trouble) |
| `<C-t>` | Open results in Trouble |

---

## LSP (Language Server)

| Key | Action |
|-----|--------|
| `gd` | Go to definition (Telescope) |
| `gD` | Go to declaration |
| `gR` | Show references (Telescope) |
| `gi` | Show implementations (Telescope) |
| `gt` | Show type definitions (Telescope) |
| `K` | Show hover documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Smart rename |
| `<leader>rs` | Restart LSP |

---

## Diagnostics & Trouble

### Inline Diagnostics

| Key | Action |
|-----|--------|
| `<leader>d` | Show diagnostic for current line |
| `<leader>D` | Show all diagnostics for file (Telescope) |
| `[d` | Go to previous diagnostic |
| `]d` | Go to next diagnostic |

### Trouble Panel

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle workspace diagnostics |
| `<leader>xd` | Toggle document diagnostics |
| `<leader>xq` | Toggle quickfix list |
| `<leader>xl` | Toggle location list |
| `<leader>xt` | Show TODOs in Trouble |
| `q` | Close Trouble window (when focused) |

---

## Completion (nvim-cmp)

The completion menu appears automatically while typing.

| Key | Action |
|-----|--------|
| `<C-j>` | Select next item |
| `<C-k>` | Select previous item |
| `<C-Space>` | Manually trigger completion |
| `<CR>` | Confirm selected item |
| `<C-e>` | Close menu |
| `<C-b>` / `<C-f>` | Scroll docs up/down |
| `<leader>ct` | Toggle completion on/off |

---

## Copilot Ghost Text

Inline suggestions shown as greyed-out text while typing.

| Key | Action |
|-----|--------|
| `<Right>` | Accept full suggestion |
| `<C-f>` | Accept one word |
| `<C-e>` | Dismiss suggestion |

---

## CopilotChat

| Key | Mode | Action |
|-----|------|--------|
| `<leader>zc` | Normal | Open chat |
| `<leader>ze` | Visual | Explain selection |
| `<leader>zr` | Visual | Review selection |
| `<leader>zf` | Visual | Fix selection |
| `<leader>zo` | Visual | Optimize selection |
| `<leader>zd` | Visual | Generate docs |
| `<leader>zt` | Visual | Generate tests |
| `<leader>zm` | Normal | Generate commit message |
| `<leader>zs` | Visual | Generate commit for selection |
| `<leader>zp` | Visual | Paste with Copilot |

---

## Claude Code

| Key | Action |
|-----|--------|
| `<leader>ac` | Toggle Claude |
| `<leader>af` | Focus Claude |
| `<leader>ar` | Resume last session |
| `<leader>aC` | Continue last session |
| `<leader>am` | Select Claude model |
| `<leader>ab` | Add current buffer to context |
| `<leader>as` (Visual) | Send selection to Claude |
| `<leader>as` (File tree) | Add file to context |
| `<leader>aa` | Accept diff |
| `<leader>ad` | Deny diff |

---

## Git

### Gitsigns (inline hunk operations)

| Key | Mode | Action |
|-----|------|--------|
| `]h` | Normal | Next hunk |
| `[h` | Normal | Previous hunk |
| `<leader>hs` | Normal/Visual | Stage hunk |
| `<leader>hr` | Normal/Visual | Reset hunk |
| `<leader>hS` | Normal | Stage entire buffer |
| `<leader>hR` | Normal | Reset entire buffer |
| `<leader>hu` | Normal | Undo stage hunk |
| `<leader>hp` | Normal | Preview hunk |
| `<leader>hb` | Normal | Blame line (full) |
| `<leader>hB` | Normal | Toggle line blame |
| `<leader>hd` | Normal | Diff this |
| `<leader>hD` | Normal | Diff this ~ |
| `ih` | Visual | Select hunk (text object) |

### LazyGit

| Key | Action |
|-----|--------|
| `<leader>lg` | Open LazyGit |

### Git Worktree

| Key | Action |
|-----|--------|
| `<leader>sr` | List git worktrees |
| `<leader>sR` | Create git worktree |

---

## Harpoon

| Key | Action |
|-----|--------|
| `<leader>hm` | Add file to Harpoon |
| `<leader>hf` | Toggle Harpoon mark |
| `<leader>ht` | Toggle Harpoon quick menu |
| `<leader>hn` | Navigate to next Harpoon file |
| `<leader>hp` | Navigate to previous Harpoon file |

---

## Treesitter

### Incremental Selection

| Key | Action |
|-----|--------|
| `<C-Space>` | Start / expand selection |
| `<BS>` | Shrink selection |

### Context

| Key | Action |
|-----|--------|
| `<leader>tt` | Toggle treesitter context |
| `<leader>tc` | Jump to context (scope start) |

---

## Terminal (Floaterm)

| Key | Action |
|-----|--------|
| `<leader>mf` | Toggle floating terminal |
| `<leader>mn` | Open new floating terminal |

---

## Miscellaneous

| Key | Action |
|-----|--------|
| `<leader>sm` | Maximize/minimize split (vim-maximizer) |
| `<leader>sr` / `<leader>sR` | Git worktree list / create |
