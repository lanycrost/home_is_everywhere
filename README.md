# My Home (or Dotfiles)

My personal config files for desktop, development and everyday environment setup in UNIX and Linux environments. With inspiration from [xero](https://github.com/xero/dotfiles), uses [GNU Stow](http://www.gnu.org/software/stow/) a free, portable, lightweight symlink farm manager to link files one folder deep to the folder above.

> __NOTE__: Tested and used mostly with ArchLinux.

## Setup Example

1. Install gnu stow.

- ```sudo pacman -S stow```
- ```sudo apt-get install stow```
- ```brew install stow```

2. Install [git](https://git-scm.com/) and clone these repository.

- ```git clone https://github.com/lanycrost/home_is_everywhere.git```

3. Enter to these directory and setup configuration.

- ```cd home_is_everywhere```
- ```stow zsh``` (or ```sudo stow zsh -t /root``` setup zsh settings for root user).

4. Remove configuration.

- ```stow -D zsh```

5. Apply Secrets

- ```sed 's/{WECHALLTOKEN}/SOMETHING/g' .zsh/06-secrets.zsh > .zsh/06-secrets.zsh```
- ```sed 's/{CODESTATS_API_KEY}/SOMETHING/g' .zsh/06-secrets.zsh > .zsh/06-secrets.zsh```
- ```sed 's/{CODESTATS_API_KEY}/SOMETHING/g' .vim/secrets.vim > .vim/secrets.vim```

## Softwares

- [WindowMaker](https://www.windowmaker.org/) - Highly configurable X11 window manager.
- [XScreenSaver](https://www.jwz.org/xscreensaver/) - XScreenSaver is the standard screen saver collection shipped on most Linux and Unix systems running the X11 Window System.
- [xterm](https://invisible-island.net/xterm/) - Terminal emulator for the X Window System.
- [zsh](https://www.zsh.org/) - Zsh is a shell designed for interactive use. I use it with [Oh My ZSH!](https://ohmyz.sh/) framework.
- [vim](https:/www./vim.org/) - Vim is a highly configurable text editor for efficiently creating and changing any kind of text.
- [tmux](https://tmux.github.io/) - TMUX is a terminal multiplexer. It lets you switch easily between several programs in one terminal.
- [git](https://git-scm.com/) - Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
- [gnupg](https://www.gnupg.org/) - GnuPG allows you to encrypt and sign your data and communications. it features a versatile key management system, along with access modules for all kinds of public key directories.
- [pass](https://www.passwordstore.org/) - Simple password management utility which follows the [UNIX philosophy](en.wikipedia.org/wiki/Unix_philosophy).
- [Midnight Commander](https://midnight-commander.org/) - GNU Midnight Commander is a visual file manager based on versatile text interfaces, which allows it to work on a regular console, inside an X Window terminal, over SSH connections and all kinds of remote shells.
- [Powerline fonts](https://github.com/powerline/fonts) - Prowerline fonts collection (I preferred one is [Hack](https://sourcefoundry.org/hack/)).
- [dbeaver](https://dbeaver.io/) - Free multi-platform database tool.
- [CodeStats](https://codestats.net/) - Plugins for vim and zsh.

## WindowMaker DockApps

- [wmmisc](https://www.dockapps.net/wmmisc) - Dockapp for monitoring the amount of users logged in, the total number of processes, the number of running (or ‘alive’) processes, the total number of forks and the system load average.
- [wmcpuload](https://www.dockapps.net/wmcpuload) - Dockapp for monitoring CPU usage.
- [wmifinfo](https://www.dockapps.net/wmifinfo) - Dockapp which showing basic network info for all available interfaces. It shows IP address, netmask, gateway and MAC address. A bit like ifconfig.
- [wmwifi](https://www.dockapps.net/wmwifi) - Dockapp for wireless network interface monitoring.
- [wmacpi](https://www.dockapps.net/wmacpi) - Dockapp provide full information about ACPI power sources (about laptop battary).
- [wmix](https://www.dockapps.net/wmix) - Dockapp mixer for OSS or ALSA. Allows toggling record source, muting individual channels, adjusting volume and balance.
- [wmclock](https://www.dockapps.net/wmclock) - Dockapp displays the date and time.
