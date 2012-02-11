export LANG=ja_JP.UTF-8
export LANG=UTF-8

export locale=ja_JP.UTF-8
export PERL_BADLANG=0

autoload predict-on;predict-on
autoload -U compinit;compinit

setopt auto_pushd
setopt auto_cd
setopt pushd_ignore_dups

autoload colors;colors

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt histignorealldups
setopt share_history
setopt list_packed
setopt nobeep

alias hi="history -i -n 0 | grep"
alias ls="ls -G"

#sakura
export MAILCHECK=0

PATH=$PATH:$HOME/local/bin
PATH=$PATH:$HOME/local/git/bin
PATH=$PATH:$HOME/local/screen/bin
PATH=$PATH:$HOME/local/ruby/bin
PATH=$PATH:$HOME/bin

RUBYLIB=$HOME/lib
export RUBYLIB

GEM_HOME=$HOME/.gem/ruby/1.8
GEM_DEFAULT_BIN=$GEM_HOME/bin
PATH=$GEM_DEFAULT_BIN:$PATH
export GEM_HOME GEM_DEFAULT_BIN PATH

export RB_USER_INSTALL=true

#http://uu59.blog103.fc2.com/blog-entry-5.html
#git completion
autoload bashcompinit
bashcompinit
source ~/git-completion.bash


# VCS settings
autoload -Uz vcs_info
precmd() {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  psvar[1]=$vcs_info_msg_0_
}
PROMPT=$'%3F%~%f%1v '
#PROMPT=$'%2F%n@%m%f %3F%~%f%1v '
#PROMPT="%{${fg[blue]}%}%/%(!.#.$) %{${reset_color}%}"
#PROMPT="%/%% "
#PROMPT="(*'-')"


