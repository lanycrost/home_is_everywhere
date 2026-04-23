# Fish shell configuration
# Modular configs loaded automatically from conf.d/

if status is-interactive
    # Starship prompt
    starship init fish | source
end
