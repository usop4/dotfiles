export LANG=ja_JP.UTF-8
export LANG=UTF-8

autoload predict-on;predict-on
autoload -U compinit;compinit

setopt auto_pushd
setopt auto_cd
setopt pushd_ignore_dups

autoload colors;colors

PROMPT="%{${fg[blue]}%}%/%(!.#.$) %{${reset_color}%}"
#PROMPT="%/%% "
#PROMPT="(*'-')"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt histignorealldups
setopt share_history
setopt list_packed
setopt nobeep

alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias hi="history -n 0 | grep"

#macbook
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:/usr/local/git
export PATH=$PATH:/Applications/android-sdk-mac_86/tools
export PYTHONPATH=/opt/local/lib/python2.5/site-packages

#sakura
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/local/git/bin
export PATH=$PATH:$HOME/local/screen/bin
export GEM_HOME=$HOME/local/gems/1.8
export RUBYLIB=$RUBYLIB:$GEM_HOME/lib
export PATH=$PATH:$GEM_HOME/bin
export MAILCHECK=0


