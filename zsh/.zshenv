# Personal
export EDITOR=nvim
export BROWSER=google-chrome
export PATH=$PATH:$HOME/go/bin
export TERM=xterm-256color

# Work Related env
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
