#
# ~/.zshrc
#

# Load configuration.
for config (~/.zsh/*.zsh) source $config

# Load oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Transparency of XTERM.
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

# Load Code::Stats plugin.
source $ZSH/codestats.zsh
