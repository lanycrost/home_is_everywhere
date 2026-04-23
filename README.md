# home_is_everywhere

Personal dotfiles for macOS, managed with [chezmoi](https://chezmoi.io).

## Quick Start

### Prerequisites

- macOS (Apple Silicon)
- [Homebrew](https://brew.sh)
- Xcode Command Line Tools: `xcode-select --install`

### Install

```bash
# Install chezmoi and apply dotfiles
brew install chezmoi
chezmoi init --apply lanycrost/home_is_everywhere
```

### Update

```bash
chezmoi update
```

## What's Included

### Terminal Core
| Tool | Purpose |
|------|---------|
| [Ghostty](https://ghostty.org) | GPU-accelerated terminal emulator |
| [fish](https://fishshell.com) | Modern shell |
| [Starship](https://starship.rs) | Cross-shell prompt |
| [tmux](https://github.com/tmux/tmux) + [oh-my-tmux](https://github.com/gpakosz/.tmux) | Terminal multiplexer |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | Smart directory jumper |
| [Atuin](https://atuin.sh) | Synced shell history |
| [direnv](https://direnv.net) | Per-project environment |

### Modern Coreutils
| Tool | Replaces |
|------|----------|
| [ripgrep](https://github.com/BurntSushi/ripgrep) | grep |
| [fd](https://github.com/sharkdp/fd) | find |
| [bat](https://github.com/sharkdp/bat) | cat |
| [eza](https://github.com/eza-community/eza) | ls |

### Editor
| Tool | Purpose |
|------|---------|
| [Neovim](https://neovim.io) + [LazyVim](https://lazyvim.github.io) | Editor with IDE features |

LazyVim extras enabled: Go, Python, Rust, TypeScript, JSON, YAML, Docker, Terraform, Ansible

### macOS Desktop
| Tool | Purpose |
|------|---------|
| [AeroSpace](https://github.com/nikitabobko/AeroSpace) | i3-like tiling window manager |
| [SketchyBar](https://github.com/FelixKratz/SketchyBar) | Custom menu bar |
| [JankyBorders](https://github.com/FelixKratz/JankyBorders) | Window border highlights |
| [Raycast](https://raycast.com) | Application launcher |
| [Karabiner Elements](https://karabiner-elements.pqrs.org) | Keyboard customization (Oryx/ZSA) |

### Browser
| Tool | Purpose |
|------|---------|
| [Firefox](https://www.mozilla.org/firefox/) | Web browser (privacy-hardened via `user.js`) |
| [Tridactyl](https://github.com/tridactyl/tridactyl) | Vim keybindings for Firefox |

### Development
| Tool | Purpose |
|------|---------|
| [mise](https://mise.jdx.dev) | Runtime manager (Node, Python, Go, Rust) |
| [Docker](https://www.docker.com) | Containers |
| [Terraform](https://www.terraform.io) / [Terragrunt](https://terragrunt.gruntwork.io) | Infrastructure as code |
| [Ansible](https://www.ansible.com) | Configuration management |
| [kubectl](https://kubernetes.io/docs/tasks/tools/) / [Helm](https://helm.sh) / [Kind](https://kind.sigs.k8s.io) | Kubernetes |
| [AWS CLI](https://aws.amazon.com/cli/) | Cloud |

## Brewfile Organization

Packages are split into category-specific Brewfiles:

- `Brewfile.core-cli` — shell, editor, terminal tools
- `Brewfile.dev-tools` — runtimes, cloud, infrastructure
- `Brewfile.apps` — GUI applications
- `Brewfile.fonts` — Nerd Fonts

## Key Customizations

- **Shell:** fish with modular `conf.d/` configs, Fisher plugins, Starship prompt
- **Editor:** LazyVim with catppuccin-mocha theme, leader=comma, vim-tmux-navigator
- **Tmux:** backtick prefix, vi-mode, seamless Neovim pane navigation (C-h/j/k/l), session resurrection
- **Tiling:** AeroSpace with i3-like manual tiling, alt as mod key
- **Status bar:** SketchyBar with workspaces, app name, media, CPU/RAM, clock, battery
- **Theme:** Catppuccin Mocha across Ghostty, Neovim, SketchyBar, and JankyBorders

## Post-Install: macOS Permissions

Some apps need manual permission grants after first launch. macOS will prompt you automatically, but here's the full list:

### Accessibility (System Settings > Privacy & Security > Accessibility)
- **AeroSpace** — required for window management
- **Raycast** — required for app launching and shortcuts
- **SketchyBar** — required for status bar

### Screen Recording (System Settings > Privacy & Security > Screen Recording)
- **AeroSpace** — needed for some window operations

### Full Disk Access (optional)
- **Ghostty** — only if you need terminal access to protected directories

### macOS UI Cleanup
For a clean tiling setup, hide the default macOS bars:

1. **Hide the Dock** — System Settings > Desktop & Dock > "Automatically hide and show the Dock" → **On**
2. **Hide the menu bar** — System Settings > Control Center > "Automatically hide and show the menu bar" → **Always**
3. **Disable recent apps in Dock** — System Settings > Desktop & Dock > "Show suggested and recent apps in Dock" → **Off**

### Manual Extension Installs
These cannot be automated and must be installed by hand:

1. **Tridactyl (Vim for Firefox)** — Install from [Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/addon/tridactyl-vim/). After installing, the config at `~/.config/tridactyl/tridactylrc` is loaded automatically. To force reload: press `:` in Firefox and run `source ~/.config/tridactyl/tridactylrc`.

### Services to Start
```bash
# Start SketchyBar (auto-starts on login after this)
brew services start sketchybar

# Start JankyBorders (auto-starts on login after this)
brew services start borders

# AeroSpace — just launch it once, start-at-login is in the config
open -a AeroSpace
```

## History

The original ArchLinux/GNU Stow setup (WindowMaker, Vim, Zsh) is preserved at tag [`v1-stow-archlinux`](../../tree/v1-stow-archlinux).

## License

[BSD 3-Clause](LICENSE)
