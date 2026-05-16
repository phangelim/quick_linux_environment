if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${%:-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${%:-%n}.zsh"
fi

export EDITOR="nvim"
export TERMINAL="alacritty"

#Load Powerlevel10k  
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#Command history  
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
