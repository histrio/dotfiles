if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export GOPATH=${HOME}/go
export PATH=$PATH:$GOPATH/bin:$HOME/.local/bin:${HOME}/.cargo/bin:${HOME}/.fzf/bin/
export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="lukerandall"

# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# DISABLE_MAGIC_FUNCTIONS=true

plugins=(git fzf autojump)

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP


alias ssh='TERM=xterm-256color ssh'
alias vim='TERM=xterm-256color vim'
alias vimdiff='TERM=xterm-256color vimdiff'
alias ll="exa --long"
alias ls="exa"
alias clvpn='bash ~/Dropbox/Cloudlinux/vpn.sh'
alias clkeys='bash ~/Dropbox/Cloudlinux/keys.sh'
alias cldev='DEVSERVER=192.168.249.5 make -C ~/projects/devdocker ssh'
alias nv='TERM=xterm-256color nvim'
alias nvim='TERM=xterm-256color nvim'
alias vim='TERM=xterm-256color nvim'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
