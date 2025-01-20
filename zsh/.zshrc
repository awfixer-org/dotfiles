# Stripped down config, please refer to zsh and omz documentation for more configuration options

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="random"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 7

# DISABLE_MAGIC_FUNCTIONS="true"

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

ZSH_CUSTOM=~/.oh-my-zsh/custom/

plugins=(aliases colored-man-pages command-not-found cp github gitignore golang systemd pip python nvm tugboat tmux git npm zoxide 1password archlinux brew docker docker-compose git-extras sudo thefuck zsh-interactive-cd)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

export ARCHFLAGS="-arch $(uname -m)"

zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# custom and experimental commands as aliases while under development

alias update-dots="~/dotfiles/update.sh"
alias discordstatus="~/dotfiles/discordstatus.sh"
alias zenithmodinit="~/dotfiles/zenithmodinit.sh"


# tmux
alias sourcet="source ~/.tmux.conf"

# omz
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias sourcez="source ~/.zshrc"

# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# git
alias gcl='git clone'
alias gi='git init'
alias ga='git add .'
alias gc='git commit -m "zsh did it for me"'
alias gclone="git clone git@github.com:"
alias gp='git push'
alias gstat="git status"
alias gstash="git stash"

# gh
alias ghrc="gh repo clone"
alias ghcreate="gh repo create"
alias ghrs="gh repo sync"
alias gha="gh auth status"
alias ghd="gh repo delete"
alias ghe="gh extension install"

# package management (archlinux)
alias pupdate="paru -Syyu"
alias uninstall="paru -Rc"
alias search="pacseek"
alias update="sudo pacman -Syyu"
alias install="paru -Syu"

# File Development and editing (testin)
alias envedit="nvim $(pwd)/.env"
alias editreadme="nvim $(pwd)/README.md"

# Terminal Commands
alias ,="pwd"
alias w="whoami"
alias c="clear"
alias systemstat="systemctl --failed"
alias cp='cp -r'

#emacs
alias emacs='emacs -nw'

#zoxide
alias cd="z"

# pnpm
export PNPM_HOME="/home/austin/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH="$PATH:/home/austin/.local/bin"

eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /home/austin/.config/op/plugins.sh
