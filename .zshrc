# bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

# Path to your oh-my-zsh installation.
export ZSH="/home/devmood/.oh-my-zsh"
export VISUAL=nvim

alias clearswp="swapoff -a && swapon -a"
alias zshrc="vim ~/.zshrc; source ~/.zshrc"
alias spark="spark-shell"
alias bashrc="vim ~/.bashrc"

alias nvim="~/nvim.appimage"
alias vim=nvim
alias vi=nvim
alias cvi="cd ~/.config/nvim"
alias qua="conda activate quantEnv"
alias pas="/etc/NetworkManager/system-connections"
alias gs="git status"
alias gb="git branch"
alias gc="git commit"
alias ga="git add"
alias gadd="git add $1"
alias gr="git reset"
alias gre="git reset $1"
alias glog="git log --graph --oneline"

ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/spark/bin
export PATH=/usr/bin/miniconda3/bin:$PATH

__conda_setup="$('/usr/bin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/bin/miniconda3/etc/profile.d/conda.sh" ]; then
    else
    fi
fi
unset __conda_setup

bindkey -v
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh

export PATH="$PATH:/home/devmood/.local/share/coursier/bin"

# for metals
set shortmess-=F

# bloop
autoload -U compinit
fpath=($HOME/.bloop/zsh $fpath)
compinit
zstyle ":completion:*" ignored-patterns "blockdev"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/devmood/.sdkman"
[[ -s "/home/devmood/.sdkman/bin/sdkman-init.sh" ]] && source "/home/devmood/.sdkman/bin/sdkman-init.sh"
