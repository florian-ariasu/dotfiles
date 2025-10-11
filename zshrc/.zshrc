# ---- Environment Variables ----
export HOSTNAME=Florians-MacBook-Air.local
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export JAVA_HOME=/Users/florianariasu/Library/Java/JavaVirtualMachines/openjdk-21.0.2/Contents/19:38Home
export BAT_THEME="Catppuccin Mocha"
export VERTICAL="\nID\t{{.ID}}\nImage\t{{.Image}}\nCommand\t{{.Command}}\nCreated\t{{.RunningFor}}\nStatus\t{{.Status}}\nPorts\t{{.Ports}}\nNames\t{{.Names}}\n"
export PATH="/opt/homebrew/opt/graphviz/bin:$PATH"

# ---- Prompt Customization ----
eval "$(starship init zsh)"

# ---- Aliases ----
alias c="clear"
alias e="exit"
alias ls="eza --icons=always"
alias la="ls -a"
alias ll="ls -alF"
alias cd="z"
alias cat="bat"
alias brewup='brew update && brew upgrade'

# ---- History Setup ----
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# ---- Key Bindings ----
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey ';3D' backward-word  # Ctrl + Left Arrow
bindkey ';3C' forward-word   # Ctrl + Right Arrow
bindkey ';9D' beginning-of-line
bindkey ';9C' end-of-line
bindkey '[D' beginning-of-line
bindkey '[C' end-of-line

bindkey ';4C' forward-word

# ---- External Scripts & Plugins ----
[ -f "/Users/florianariasu/.ghcup/env" ] && . "/Users/florianariasu/.ghcup/env" # ghcup-env
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- CLI Enhancements ----
eval "$(zoxide init zsh)"

# ---- Docker Function ----
dockerps() {
    docker ps --format="$VERTICAL" "$@"
}

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/florianariasu/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export SSL_CERT_FILE=$(python3 -m certifi)
export PATH=/Users/florianariasu/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin:$PATH

