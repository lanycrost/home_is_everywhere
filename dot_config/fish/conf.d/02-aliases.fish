# Modern coreutils aliases
if command -q eza
    alias ls "eza --icons"
    alias ll "eza -l --icons --git"
    alias la "eza -la --icons --git"
    alias lt "eza --tree --icons --level=2"
end

if command -q bat
    alias cat "bat --plain"
end

# Convenience aliases
alias vim nvim
alias g git
alias k kubectl
alias tf terraform
alias dc "docker compose"
