# Personal
export EDITOR=vim
export BROWSER=google-chrome

# Work Related env
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
