export ZSH="/home/sach1/.oh-my-zsh"

ZSH_THEME="robbyrussell"


nfetch

DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
        git
        colored-man-pages
        systemd
        zsh-autosuggestions
        zsh-syntax-highlighting
        )

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan, bold"

export LANG='it_IT.UTF-8'
export BROWSER='Firefox'
export EDITOR='neovim'
