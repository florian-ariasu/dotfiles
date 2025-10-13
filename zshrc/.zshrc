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
alias clean='/Users/florianariasu/empty_trash.sh'

# ---- Git aliases ---- 
# # Status / Add / Commit / Push
git config --global alias.stat status
git config --global alias.a add
git config --global alias.com commit
git config --global alias.p push

# Checkout / Branch / Merge / Pull
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.mg merge
git config --global alias.pl pull

# Undo / Reset / Diff
git config --global alias.unstage 'reset HEAD --'
git config --global alias.df diff
git config --global alias.dc 'diff --cached'

# Log shortcuts
git config --global alias.lg "log --oneline --graph --decorate --all"
git config --global alias.last "log -1 HEAD"

# Stash / Tag
git config --global alias.stsh stash
git config --global alias.tg tag

# Remote
git config --global alias.r "remote"


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
compinit -u
# End of Docker CLI completions
export SSL_CERT_FILE=$(python3 -m certifi)
export PATH=/Users/florianariasu/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin:$PATH

alias get_idf=". $HOME/esp/esp-idf/export.sh"

