# Hotkey Reference - home_is_everywhere

Complete keybinding reference for every configured component in this dotfiles system.

---

## Table of Contents

- [AeroSpace (Window Manager)](#aerospace-window-manager)
- [Neovim](#neovim)
- [Tmux](#tmux)
- [Tridactyl (Firefox)](#tridactyl-firefox)
- [Ghostty (Terminal)](#ghostty-terminal)
- [Fish Shell / FZF / Atuin](#fish-shell--fzf--atuin)
- [Karabiner (Keyboard Remapping)](#karabiner-keyboard-remapping)
- [Learning Resources](#learning-resources)

---

## AeroSpace (Window Manager)

**Config:** `dot_config/aerospace/aerospace.toml`

### Launch Apps

| Hotkey | Action |
|--------|--------|
| `Alt + Shift + Enter` | Open Ghostty terminal |
| `Alt + B` | Open Firefox browser |

### Focus Navigation

| Hotkey | Action |
|--------|--------|
| `Alt + H` | Focus window left |
| `Alt + J` | Focus window down |
| `Alt + K` | Focus window up |
| `Alt + L` | Focus window right |

### Move Windows

| Hotkey | Action |
|--------|--------|
| `Alt + Shift + H` | Move window left |
| `Alt + Shift + J` | Move window down |
| `Alt + Shift + K` | Move window up |
| `Alt + Shift + L` | Move window right |

### Window Management

| Hotkey | Action |
|--------|--------|
| `Alt + Q` | Close focused window |
| `Alt + E` | Balance sizes — make all windows on the workspace equal size |
| `Alt + Shift + R` | Reload AeroSpace config (use after editing aerospace.toml) |

### Layout

| Hotkey | Action |
|--------|--------|
| `Alt + V` | Split horizontal — next window opens to the right of current |
| `Alt + S` | Split vertical — next window opens below current |
| `Alt + F` | Toggle fullscreen — make current window fill the whole screen (press again to restore) |
| `Alt + Shift + Space` | Toggle floating/tiling — floating = window moves freely with mouse like a normal macOS window; tiling = window is locked into the grid layout managed by AeroSpace |
| `Alt + ,` | Cycle layout — switches between horizontal (windows side by side) and vertical (windows stacked top to bottom) arrangement for the current container |

### Workspaces

| Hotkey | Action |
|--------|--------|
| `Alt + 1..9` | Switch to workspace 1-9 |
| `Alt + Shift + 1..9` | Move window to workspace 1-9 |
| `Alt + Tab` | Next workspace |
| `Alt + Shift + Tab` | Previous workspace |

### Multi-Monitor

| Hotkey | Action |
|--------|--------|
| `Alt + Shift + F` | Focus next monitor — move keyboard focus to the other screen |
| `Alt + Shift + M` | Move window to next monitor and follow focus |

### Resize Mode

| Hotkey | Action |
|--------|--------|
| `Alt + R` | Enter resize mode |
| (resize) `H` | Shrink width |
| (resize) `L` | Grow width |
| (resize) `K` | Shrink height |
| (resize) `J` | Grow height |
| (resize) `Enter` / `Esc` | Exit resize mode |

---

## Neovim

**Config:** `dot_config/nvim/lua/config/keymaps.lua` + LazyVim defaults

> **Leader key is `Space`.** So `Space w` means press `Space` then `w`.
> Press `Space` and **wait 1 second** — a which-key popup shows all available commands.

### Pane/Window Navigation

| Hotkey | Action |
|--------|--------|
| `Ctrl + H` | Navigate left (seamless across tmux/vim panes) |
| `Ctrl + J` | Navigate down (seamless across tmux/vim panes) |
| `Ctrl + K` | Navigate up (seamless across tmux/vim panes) |
| `Ctrl + L` | Navigate right (seamless across tmux/vim panes) |
| `Ctrl + W` then `Space` then `>` / `<` | Increase / decrease window width |
| `Ctrl + W` then `Space` then `+` / `-` | Increase / decrease window height |

### File & Buffer Management

| Hotkey | Action |
|--------|--------|
| `Space w` | Save file |
| `Ctrl + S` | Save file (works in any mode) |
| `Space Space` | Find files in project (fuzzy search) |
| `Space ff` | Find files (project root) |
| `Space fF` | Find files (current directory) |
| `Space fg` | Find files (git tracked only) |
| `Space fr` | Recent files |
| `Space fR` | Recent files (current directory) |
| `Space fn` | New file |
| `Space fc` | Find config file |
| `Space fp` | Projects |
| `Space ,` | Switch between open buffers (fuzzy list) |
| `Space bb` | Switch to last buffer (toggle between two files) |
| `Space bd` | Close current buffer |
| `Space bD` | Close buffer and its window |
| `Space bo` | Close all other buffers |
| `Space bp` | Pin/unpin buffer |
| `Space bj` | Pick buffer (shows labels to jump to) |
| `Space bl` | Close all buffers to the left |
| `Space br` | Close all buffers to the right |
| `H` | Previous buffer (in tab bar) |
| `L` | Next buffer (in tab bar) |
| `[B` / `]B` | Move buffer left / right in tab bar |

### Search & Find

| Hotkey | Action |
|--------|--------|
| `Space /` | Search text in project (grep) |
| `Space sg` | Search text in project (grep, root dir) |
| `Space sG` | Search text in project (grep, current dir) |
| `Space sw` | Search current word in project |
| `Space sW` | Search current word (current directory) |
| `Space sb` | Search lines in current buffer |
| `Space sB` | Search across all open buffers |
| `Space s/` | Search history |
| `Space s"` | Registers (clipboard history) |
| `Space sc` | Command history |
| `Space sC` | Available commands |
| `Space sh` | Help pages |
| `Space sk` | Keymaps (searchable list of all shortcuts) |
| `Space sm` | Marks |
| `Space sM` | Man pages |
| `Space sR` | Resume last search |
| `Space sr` | Search and replace |
| `Space st` | Search TODO comments in project |

### Code Navigation & LSP

| Hotkey | Action |
|--------|--------|
| `gd` | Go to definition |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `gra` | Code action (quick fix, refactor suggestions) |
| `grn` | Rename symbol |
| `grx` | Run code lens |
| `gO` | Document symbols (outline of functions/classes) |
| `K` | Show hover docs for symbol under cursor |
| `Space K` | Keyword program |
| `Space cd` | Show diagnostics for current line (errors/warnings) |
| `Space cf` | Format code |
| `Space cF` | Format injected languages (e.g. SQL inside Python) |
| `Space cm` | Mason — manage LSP servers, linters, formatters |
| `Space cs` | Symbols sidebar (Trouble) |
| `Space cS` | LSP references/definitions (Trouble) |

### Diagnostics & Errors

| Hotkey | Action |
|--------|--------|
| `[d` / `]d` | Previous / Next diagnostic (any severity) |
| `[e` / `]e` | Previous / Next error |
| `[w` / `]w` | Previous / Next warning |
| `[D` / `]D` | First / Last diagnostic in buffer |
| `Space xx` | All project diagnostics (Trouble panel) |
| `Space xX` | Buffer diagnostics only (Trouble) |
| `Space xq` | Quickfix list |
| `Space xl` | Location list |
| `Space xQ` | Quickfix list (Trouble) |
| `Space xL` | Location list (Trouble) |
| `[q` / `]q` | Previous / Next trouble/quickfix item |

### TODO Comments

| Hotkey | Action |
|--------|--------|
| `[t` / `]t` | Previous / Next TODO comment |
| `Space xt` | All TODO comments (Trouble) |
| `Space xT` | All TODO/FIX/FIXME comments (Trouble) |
| `Space sT` | Search all TODO/FIX/FIXME |

### Git

| Hotkey | Action |
|--------|--------|
| `Space gd` | Diffview — side-by-side diff of all changes |
| `Space gh` | File history — git log for current file |
| `Space gs` | Git status (fuzzy picker) |
| `Space gS` | Git stash list |
| `Space gb` | Git blame for current line |
| `Space gl` | Git log |
| `Space gL` | Git log (current directory) |
| `Space gf` | Git history for current file |
| `Space gD` | Git diff against origin |
| `Space gB` | Open file in browser (GitHub) |
| `Space gY` | Copy GitHub URL for current file |
| `Space gi` | GitHub issues (open) |
| `Space gI` | GitHub issues (all) |
| `Space gp` | GitHub pull requests (open) |
| `Space gP` | GitHub pull requests (all) |

### Flash (Quick Jump)

| Hotkey | Action |
|--------|--------|
| `s` | Flash — type 2 chars to jump anywhere visible on screen |
| `S` | Flash Treesitter — select a code block by its syntax tree |
| `f` / `F` | Jump to character forward / backward (enhanced by Flash) |
| `t` / `T` | Jump to before character forward / backward |
| `;` | Repeat last jump |
| `R` | Treesitter search (visual/operator mode) |
| `r` | Remote Flash (operator mode — act on distant text) |

### Editing

| Hotkey | Action |
|--------|--------|
| `Space j` | Format JSON (pretty print with jq) |
| `Space W` | Remove trailing whitespace from entire file |
| `J` (visual) | Move selected lines down |
| `K` (visual) | Move selected lines up |
| `Alt + J` | Move current line down |
| `Alt + K` | Move current line up |
| `Ctrl + D` | Page down (cursor stays centered) |
| `Ctrl + U` | Page up (cursor stays centered) |
| `n` / `N` | Next / Previous search result (cursor stays centered) |
| `Esc` | Clear search highlighting |
| `<` / `>` (visual) | Indent left / right (keeps selection) |
| `gcc` | Toggle comment on current line |
| `gc` (visual) | Toggle comment on selection |
| `gcO` / `gco` | Add comment line above / below cursor |
| `[<Space>` / `]<Space>` | Add empty line above / below cursor |

### Surround (mini-surround)

| Hotkey | Action |
|--------|--------|
| `gsa` | Add surrounding (e.g. `gsa"` wraps word in quotes) |
| `gsd` | Delete surrounding |
| `gsr` | Replace surrounding (e.g. `gsr"'` changes `"` to `'`) |
| `gsf` | Find next surrounding |
| `gsF` | Find previous surrounding |
| `gsh` | Highlight surrounding |

### Windows & Splits

| Hotkey | Action |
|--------|--------|
| `Space -` | Split window below |
| `Space \|` | Split window right |
| `Space wd` | Close current window |
| `Space wm` | Toggle zoom mode (maximize current window) |
| `Space z` | Zoom current split (only with multiple splits) |
| `Space Z` | Restore all splits to equal size |
| `Ctrl + W` then `Space` | Window hydra mode (resize with repeated keys) |

### Tabs

| Hotkey | Action |
|--------|--------|
| `Space <Tab> <Tab>` | New tab |
| `Space <Tab> d` | Close tab |
| `Space <Tab> ]` | Next tab |
| `Space <Tab> [` | Previous tab |
| `Space <Tab> f` | First tab |
| `Space <Tab> l` | Last tab |
| `Space <Tab> o` | Close all other tabs |

### Sessions

| Hotkey | Action |
|--------|--------|
| `Space qs` | Restore session for current directory |
| `Space ql` | Restore last session |
| `Space qS` | Select session from list |
| `Space qd` | Don't save current session |
| `Space qq` | Quit all |

### UI Toggles

| Hotkey | Action |
|--------|--------|
| `Space uf` | Toggle auto-format (global) |
| `Space uF` | Toggle auto-format (buffer only) |
| `Space us` | Toggle spell check |
| `Space uw` | Toggle word wrap |
| `Space ul` | Toggle line numbers |
| `Space uL` | Toggle relative line numbers |
| `Space ud` | Toggle diagnostics (hide/show errors) |
| `Space uh` | Toggle inlay hints (inline type info from LSP) |
| `Space ub` | Toggle dark/light background |
| `Space uc` | Toggle conceal level (hide markdown formatting etc.) |
| `Space uT` | Toggle treesitter highlighting |
| `Space uA` | Toggle tab line |
| `Space ua` | Toggle animations |
| `Space uD` | Toggle dimming (dim inactive code) |
| `Space ug` | Toggle indent guides |
| `Space uS` | Toggle smooth scroll |
| `Space up` | Toggle auto pairs (auto-close brackets) |
| `Space uC` | Colorscheme picker |
| `Space uz` | Toggle zen mode (distraction-free writing) |
| `Space uZ` | Toggle zoom mode |
| `Space un` | Dismiss all notifications |

### Explorer & File Tree

| Hotkey | Action |
|--------|--------|
| `Space e` | Open file explorer (project root) |
| `Space E` | Open file explorer (current directory) |

### Utility

| Hotkey | Action |
|--------|--------|
| `Space l` | Open Lazy plugin manager |
| `Space L` | LazyVim changelog |
| `Space ?` | Show all buffer keymaps (searchable) |
| `Space n` | Notification history |
| `Space .` | Toggle scratch buffer (quick notes) |
| `Space S` | Select scratch buffer |
| `Space ur` | Redraw screen / clear search highlight |
| `Space ui` | Inspect position (show syntax info under cursor) |
| `Space uI` | Inspect treesitter tree |
| `Space ft` | Open terminal (root dir) |
| `Space fT` | Open terminal (current dir) |
| `Ctrl + /` | Open terminal |

### Notifications (Noice)

| Hotkey | Action |
|--------|--------|
| `Space snl` | Last notification message |
| `Space snh` | Notification history |
| `Space sna` | All notifications |
| `Space snd` | Dismiss all notifications |
| `Space snt` | Notification picker |
| `Ctrl + F` | Scroll forward in notification |
| `Ctrl + B` | Scroll backward in notification |

### Treesitter Selection

| Hotkey | Action |
|--------|--------|
| `Ctrl + Space` | Start/expand treesitter selection (select larger code blocks) |
| `[i` / `]i` | Jump to top / bottom edge of scope |
| `ii` (visual) | Select inner scope |
| `ai` (visual) | Select full scope |

---

## Tmux

**Config:** `dot_tmux.conf.local` (overrides on top of oh-my-tmux)

### General

| Hotkey | Action |
|--------|--------|
| `Ctrl + B` | **Prefix key** (tmux default) |

All `prefix +` commands below mean: press `Ctrl+B`, release, then press the next key.

### Pane Navigation

**Without prefix** (seamless Neovim/tmux — works across both):

| Hotkey | Action |
|--------|--------|
| `Ctrl + H` | Select pane left |
| `Ctrl + J` | Select pane down |
| `Ctrl + K` | Select pane up |
| `Ctrl + L` | Select pane right |

**With prefix** (oh-my-tmux defaults):

| Hotkey | Action |
|--------|--------|
| `prefix + h` | Select pane left |
| `prefix + j` | Select pane down |
| `prefix + k` | Select pane up |
| `prefix + l` | Select pane right |
| `prefix + ;` | Last active pane |
| `prefix + o` | Next pane |

### Splits

| Hotkey | Action |
|--------|--------|
| `prefix + -` | Split horizontal — new pane below |
| `prefix + _` | Split vertical — new pane to the right |

### Pane Resize (repeatable — hold prefix, tap key multiple times)

| Hotkey | Action |
|--------|--------|
| `prefix + H` | Resize left 2 |
| `prefix + J` | Resize down 2 |
| `prefix + K` | Resize up 2 |
| `prefix + L` | Resize right 2 |
| `prefix + Alt + H/J/K/L` | Resize by 5 (bigger steps) |

### Windows (tabs)

| Hotkey | Action |
|--------|--------|
| `prefix + c` | New window |
| `prefix + &` | Kill window (with confirmation) |
| `prefix + ,` | Rename window |
| `prefix + 0-9` | Switch to window by number |
| `prefix + Tab` | Last window |
| `prefix + C-h` | Previous window |
| `prefix + C-l` | Next window |

### Sessions

| Hotkey | Action |
|--------|--------|
| `prefix + d` | Detach from session |
| `prefix + s` | List sessions |
| `prefix + $` | Rename session |
| `prefix + (` | Previous session |
| `prefix + )` | Next session |
| `prefix + C-c` | New session |

### Copy Mode (vi-style)

| Hotkey | Action |
|--------|--------|
| `prefix + Enter` | Enter copy mode |
| `prefix + [` | Enter copy mode (alternative) |
| `v` | Begin selection |
| `V` | Select line |
| `y` | Copy to clipboard (pbcopy) |
| `q` / `Esc` | Exit copy mode |
| Mouse drag end | Copy to clipboard (pbcopy) |

### Utility

| Hotkey | Action |
|--------|--------|
| `prefix + r` | Reload tmux config |
| `prefix + e` | Edit tmux config in editor |
| `prefix + m` | Toggle mouse on/off |
| `prefix + z` | Zoom pane (toggle fullscreen for current pane) |
| `prefix + +` | Maximize pane to new window (restore with same key) |
| `prefix + <` | Swap pane up |
| `prefix + >` | Swap pane down |
| `prefix + x` | Kill pane (with confirmation) |
| `prefix + ?` | List all keybindings |

---

## Tridactyl (Firefox)

**Config:** `dot_config/tridactyl/tridactylrc`

> Tridactyl adds Vim-style keybindings to Firefox. Press `:` to open command line, `Esc` to return to normal mode.
> **Does not work on:** `about:` pages, `addons.mozilla.org`, PDF viewer.

### Scrolling

| Hotkey | Action |
|--------|--------|
| `j` | Scroll down 5 lines |
| `k` | Scroll up 5 lines |
| `G` | Scroll to bottom of page |
| `gg` | Scroll to top of page |
| `Ctrl + D` | Scroll half page down |
| `Ctrl + U` | Scroll half page up |

### Link Hints (clicking without mouse)

| Hotkey | Action |
|--------|--------|
| `f` | Show link hints — type the label to click the link |
| `F` | Show link hints — open link in new tab |
| `gi` | Focus first input field on the page |
| `;y` | Copy link URL to clipboard (shows hints) |
| `;p` | Copy element text (shows hints) |

### Tab Management (custom — from tridactylrc)

| Hotkey | Action |
|--------|--------|
| `J` | Next tab |
| `K` | Previous tab |
| `d` | Close tab (switches to previous tab) |
| `u` | Undo close tab (restore last closed) |

### Tab Management (built-in defaults)

| Hotkey | Action |
|--------|--------|
| `g0` | First tab |
| `g$` | Last tab |
| `gt` | Next tab |
| `gT` | Previous tab |

### Navigation

| Hotkey | Action |
|--------|--------|
| `H` | Go back in browser history |
| `L` | Go forward in browser history |
| `r` | Reload page |
| `R` | Hard reload (skip cache) |
| `gu` | Go up one level in URL (e.g. `/foo/bar` → `/foo`) |
| `gU` | Go to root of site (e.g. → `example.com/`) |
| `yy` | Copy current page URL to clipboard |

### Opening URLs

| Hotkey | Action |
|--------|--------|
| `o` | Open URL or search (in current tab) |
| `O` | Open URL or search (pre-filled with current URL) |
| `t` | Open URL or search (in new tab) |
| `T` | Open URL or search (in new tab, pre-filled with current URL) |

### Search Engines (use with `o`/`t` then prefix)

| Prefix | Engine |
|--------|--------|
| `g` | Google |
| `gh` | GitHub |
| `yt` | YouTube |
| `mdn` | MDN Web Docs |
| `npm` | npm |
| `rs` | Rust docs (docs.rs) |

Example: press `t`, type `gh neovim`, hit Enter → searches GitHub for "neovim" in a new tab.

### Find on Page

| Hotkey | Action |
|--------|--------|
| `/` | Search text on page |
| `n` | Next search result |
| `N` | Previous search result |

### Modes

| Hotkey | Action |
|--------|--------|
| `Esc` | Return to normal mode (from any mode) |
| `i` | Enter ignore mode (pass all keys to the page, like a normal browser) |
| `Shift + Esc` | Toggle ignore mode |

### Command Line

| Hotkey | Action |
|--------|--------|
| `:` | Open command line |
| `:help` | Show help |
| `:tutor` | Interactive tutorial (learn Tridactyl) |
| `:source ~/.config/tridactyl/tridactylrc` | Reload your config |

### Ignored Sites (Tridactyl disabled — from tridactylrc)

- mail.google.com
- docs.google.com
- sheets.google.com

---

## Ghostty (Terminal)

**Config:** `dot_config/ghostty/config`

| Hotkey | Action |
|--------|--------|
| `Cmd + T` | New tab |
| `Cmd + W` | Close surface |
| `Cmd + N` | New window |

---

## Fish Shell

**Config:** `dot_config/fish/config.fish`, `dot_config/fish/conf.d/*`

### Autosuggestions

Fish shows greyed-out suggestions as you type based on history and completions.

| Hotkey | Action |
|--------|--------|
| `Ctrl + F` | Accept full suggestion (vim-friendly alternative) |
| `Alt + F` | Accept one word (vim-friendly alternative) |

### Navigation & Editing

| Hotkey | Action |
|--------|--------|
| `Alt + ←` / `Alt + B` | Move cursor one word left |
| `Alt + →` / `Alt + F` | Move cursor one word right |
| `Ctrl + A` | Move cursor to beginning of line |
| `Ctrl + E` | Move cursor to end of line |
| `Ctrl + W` | Delete word before cursor |
| `Alt + D` | Delete word after cursor |
| `Ctrl + U` | Delete from cursor to beginning of line |
| `Ctrl + K` | Delete from cursor to end of line |
| `Ctrl + Z` | Undo last edit |

### History

| Hotkey | Action |
|--------|--------|
| `↑` / `↓` | Browse command history |
| `Alt + ↑` / `Alt + ↓` | Search history for commands starting with current input |
| `Ctrl + R` | Fuzzy command history search (via Atuin) |

### Tab Completion

| Hotkey | Action |
|--------|--------|
| `Tab` | Complete command/path/argument |
| `Shift + Tab` | Cycle backwards through completions |
| `Tab Tab` | Show all completions when ambiguous |

### Jobs & Processes

| Hotkey | Action |
|--------|--------|
| `Ctrl + C` | Cancel current command |
| `Ctrl + D` | Exit shell (if line is empty) |
| `Ctrl + Z` | Suspend current process (resume with `fg`) |
| `Ctrl + L` | Clear screen |

### FZF Integration

| Hotkey | Action |
|--------|--------|
| `Ctrl + T` | Fuzzy file search — find and insert a file path |
| `Ctrl + R` | Fuzzy command history (enhanced by Atuin) |
| `Alt + C` | Fuzzy directory navigation — cd into selected dir |

### Atuin (Smart Shell History)

Atuin replaces the default `Ctrl + R` with a full-screen, searchable, synced history UI. Inside Atuin:

| Hotkey | Action |
|--------|--------|
| Type to search | Filter history in real time |
| `↑` / `↓` | Navigate results |
| `Enter` | Execute selected command |
| `Tab` | Insert command into prompt without executing |
| `Esc` / `Ctrl + C` | Cancel and close |

### Zoxide (Smart `cd`)

| Command | Action |
|---------|--------|
| `z <partial>` | Jump to most frecent matching directory |
| `z foo bar` | Jump to directory matching both "foo" and "bar" |
| `zi` | Interactive directory picker with fzf |
| `z -` | Jump to previous directory |

---

## Moonlander Keyboard Layout

Recommended thumb cluster configuration for this dotfiles setup.

### Thumb Key Layout

```
LEFT HAND                               RIGHT HAND
+--------+--------+                     +--------+--------+
|  Tab   |        |                     |        | Bksp   |
| hold:  | Shift  |                     | Shift  | hold:  |
|  Alt   |        |                     |        |  Cmd   |
+--------+--------+                     +--------+--------+
         +--------+                     +--------+
         | Space  |                     | Enter  |
         |        |                     |        |
         +--------+                     +--------+
+--------+                                       +--------+
|  Esc   |                                       |        |
| hold:  |                                       | Layer  |
|  Ctrl  |                                       | toggle |
+--------+                                       +--------+
```

### Thumb Keys Explained

| Position | Tap | Hold | Why |
|----------|-----|------|-----|
| **Left big** | `Space` | — | Most pressed key, biggest thumb key |
| **Left upper-left** | `Tab` | `Alt` | Tab for completions; hold for all AeroSpace commands |
| **Left upper-right** | — | `Shift` | For `Alt+Shift` combos (move window to workspace) |
| **Left lower** | `Esc` | `Ctrl` | Tap exits Vim modes; hold gives `Ctrl+HJKL` pane nav |
| **Right big** | `Enter` | — | Confirm/execute, natural thumb position |
| **Right upper-left** | — | `Shift` | Shift on both sides for comfortable chording |
| **Right upper-right** | `Backspace` | `Cmd` | Tap to delete; hold for macOS shortcuts (`Cmd+C/V/Q`) |
| **Right lower** | — | Layer toggle | Access a symbols/nav layer |

### How It Maps to Your Tools

**AeroSpace (window management):**

| Action | Thumb + Keys |
|--------|-------------|
| Focus window left/down/up/right | Hold left `Tab` (Alt) + `H/J/K/L` |
| Move window to direction | Hold left `Tab` (Alt) + left `Shift` + `H/J/K/L` |
| Switch to workspace 3 | Hold left `Tab` (Alt) + `3` |
| Move window to workspace 3 | Hold left `Tab` (Alt) + left `Shift` + `3` |
| Close window | Hold left `Tab` (Alt) + `Q` |
| Toggle fullscreen | Hold left `Tab` (Alt) + `F` |
| Launch terminal | Hold left `Tab` (Alt) + left `Shift` + `Enter` |

**Neovim + Tmux (editor & terminal):**

| Action | Thumb + Keys |
|--------|-------------|
| Navigate panes (Vim/Tmux) | Hold left `Esc` (Ctrl) + `H/J/K/L` |
| Tmux prefix | Hold left `Esc` (Ctrl) + `B` |
| Exit insert/visual mode | Tap left `Esc` |
| Leader commands (find files etc.) | Tap `Space` (left thumb) then command key |
| Save file | `Space` then `w` |
| Find files | `Space` then `Space` |
| Grep project | `Space` then `/` |
| Git status | `Space` then `g` then `s` |
| Fuzzy history search | Hold left `Esc` (Ctrl) + `R` |

**Fish Shell:**

| Action | Thumb + Keys |
|--------|-------------|
| Fuzzy file search | Hold left `Esc` (Ctrl) + `T` |
| Fuzzy directory nav | Hold left `Tab` (Alt) + `C` |
| Accept autosuggestion | Hold left `Esc` (Ctrl) + `F` |
| Accept one word | Hold left `Tab` (Alt) + `F` |

**Ghostty & macOS:**

| Action | Thumb + Keys |
|--------|-------------|
| New terminal tab | Hold right `Bksp` (Cmd) + `T` |
| Close tab | Hold right `Bksp` (Cmd) + `W` |
| Copy/Paste | Hold right `Bksp` (Cmd) + `C` / `V` |
| Quit app | Hold right `Bksp` (Cmd) + `Q` |

### The Design Principle

All modifiers are on thumbs — your fingers never leave the home row:

```
Fingers: only letters and numbers
Thumbs:  all modifiers (Ctrl, Alt, Shift, Cmd)
```

The modifier + `HJKL` pattern stays consistent everywhere:
- **No modifier** → Vim motions (move cursor)
- **Ctrl** (left thumb) → Tmux/Vim pane navigation
- **Alt** (left thumb) → AeroSpace window management
- **Alt + Shift** (both left thumbs) → AeroSpace move/send window

---

## Karabiner (Keyboard Remapping)

**Config:** `dot_config/karabiner/` (currently empty - pending Oryx setup)

No custom remappings configured yet.

---

## Learning Resources

### AeroSpace

- [AeroSpace GitHub](https://github.com/nikitabobko/AeroSpace) - Official docs and keybinding reference
- [AeroSpace Guide (YouTube)](https://www.youtube.com/results?search_query=aerospace+macos+tiling+window+manager+tutorial) - Video tutorials
- Practice: Start with `Alt + 1..9` workspace switching, then add `Alt + hjkl` navigation

### Neovim / Vim Keybindings

- [Vim Adventures](https://vim-adventures.com/) - Learn Vim by playing a game
- [OpenVim](https://www.openvim.com/) - Interactive Vim tutorial in the browser
- [Vimtutor](https://vimschool.netlify.app/introduction/vimtutor/) - Built-in: run `vimtutor` in terminal
- [ThePrimeagen's Vim Motions (YouTube)](https://www.youtube.com/watch?v=X6AR2RMB5tE&list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R) - Fast-paced and practical
- [Vim Cheat Sheet](https://vim.rtorr.com/) - Quick reference
- Practice: Use `vimtutor` first, then enforce Vim in everything (Tridactyl, IDE, etc.)

### Tmux

- [Tmux Cheat Sheet](https://tmuxcheatsheet.com/) - Visual quick reference
- [Ham Vocke's tmux guide](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/) - Beginner-friendly
- [ThePrimeagen's tmux setup (YouTube)](https://www.youtube.com/watch?v=DzNmUNvnB04) - Developer-focused config walkthrough
- Practice: Force yourself to use splits (`prefix + -` and `prefix + _`) instead of opening new terminal windows

### Tridactyl (Vim in Firefox)

- [Tridactyl Tutorial](https://github.com/tridactyl/tridactyl/blob/master/doc/newsletters/tips-and-tricks.md) - Tips and tricks
- `:tutor` command inside Firefox (with Tridactyl installed) - Built-in interactive tutorial
- Practice: Browse normally but use `j/k` for scrolling and `J/K` for tabs

### General Keyboard-Driven Workflow

- [Mouseless Development Environment (Book)](https://themouseless.dev/) - Paid but comprehensive guide to ditching the mouse
- [Shortcut Foo](https://www.shortcutfoo.com/) - Drills for Vim, Git, CLI, and more
- [KeyCombiner](https://keycombiner.com/) - Practice keyboard shortcuts with spaced repetition

### Recommended Learning Path

1. **Week 1-2:** Focus on Vim motions (`vimtutor` + Vim Adventures). This is the foundation since Vim keybindings are reused across Neovim, Tmux copy mode, and Tridactyl.
2. **Week 3-4:** Add Tmux navigation. Practice `Ctrl+hjkl` to seamlessly move between Vim and Tmux panes.
3. **Week 5-6:** Learn AeroSpace workspace/window management. `Alt+hjkl` for focus, `Alt+1..9` for workspaces.
4. **Week 7+:** Enable Tridactyl in Firefox. Now your entire workflow is keyboard-driven.

> **Tip:** The key insight of this setup is that `hjkl` is used everywhere - Vim, Tmux, AeroSpace, Tridactyl. Learn it once, use it everywhere. The modifier keys differentiate context: no modifier (Vim), `Ctrl` (Tmux/Vim navigation), `Alt` (AeroSpace), none (Tridactyl normal mode).
