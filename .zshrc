# Powerlevel10k instant prompt for faster startup
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Start TMUX automatically
# if [[ -z "$TMUX" ]]; then
#   tmux attach || tmux new-session
# fi

# History settings
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Zsh options
setopt beep nomatch
unsetopt autocd extendedglob notify
bindkey -v
export KEYTIMEOUT=1


# Completion system
fpath+=(~/zsh-completions/src)
zstyle :compinstall filename '/home/mrjxtr/.zshrc'
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'm:{A-Z}={a-z}'


# Aliases
alias nv="nvim"
alias cfgchad="cd ~/.config/nvim/ && nvim ."
alias cfgnvim="nv ~/.config/nvim/init.vim"
alias cfhvim="nv ~/.vimrc"
alias cfgp10k="nv ~/.p10k.zsh"
alias cfgtmux="nv ~/.tmux.conf"
alias cfhzsh="nv ~/.zshrc"
alias pwsh="pwsh.exe -c ''"
alias opera="pwsh.exe -c 'start opera.exe'"
alias explr="explorer.exe"
alias cls="clear"
alias desk='cd ~/d/Admin\ Files/Desktop'
alias home="cd ~"
alias proj="cd ~/projects"
alias wrep='cd ~/d/Admin\ Files/Desktop/Work-Repos'
alias crep='cd ~/d/Admin\ Files/Desktop/Code\ Proj'
alias drep='cd ~/d/Admin\ Files/Desktop/Data\ Proj'
alias chrome='google-chrome-stable --no-sandbox --disable-software-rasterizer 2>/dev/null'

# Plugins and themes
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/alias-tips/alias-tips.plugin.zsh


# PATH environments
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export PATH="$PATH:/opt/nvim/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mrjxtr/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mrjxtr/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mrjxtr/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mrjxtr/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# END
