if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${%:-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${%:-%n}.zsh"
fi

export EDITOR="nvim"
export TERMINAL="alacritty"

# load Powerlevel10k  
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# command history  
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory

if command -v eza &> /dev/null; then
    alias ls="eza --icons=always --group-directories-first"
    alias ll="eza -lah --icons=always --group-directories-first"
    alias la="eza -a --icons=always --group-directories-first"
    alias lt="eza --tree --icons=always" # Beautiful tree view replacement
else
    
    alias ls="ls --color=auto"
    alias ll="ls -lah --color=auto"
    alias ..="cd .."
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
