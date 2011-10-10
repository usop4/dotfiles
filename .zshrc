export LANG=ja_JP.UTF-8
export LANG=UTF-8

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

alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias hi="history -i -n 0 | grep"
alias ls='ls -G'

#macbook
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:/usr/local/git
export PATH=$PATH:/Applications/android-sdk-mac_86/tools
export PYTHONPATH=/opt/local/lib/python2.5/site-packages

#sakura
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/local/git/bin
export PATH=$PATH:$HOME/local/screen/bin

export PATH=$PATH:$HOME/bin

RUBYLIB=$HOME/lib
GEM_HOME=$HOME/.gem/ruby/1.8
GEM_DEFAULT_BIN=$GEM_HOME/bin
PATH=$GEM_DEFAULT_BIN:$PATH
export GEM_HOME GEM_DEFAULT_BIN PATH

export MAILCHECK=0

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


