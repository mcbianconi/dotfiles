# Personal
export EDITOR=vim
export BROWSER=chromium
export PATH=$PATH:$HOME/scripts

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/code/go

# Flutter
export FLUTTER_HOME=/opt/flutter
export PATH=$PATH:$FLUTTER_HOME/bin

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Yarn global
export PATH="$HOME/.yarn/bin:$PATH"

# Work Related env
if [ -f ~/.work_env ]; then
    . ~/.work_env
fi

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
