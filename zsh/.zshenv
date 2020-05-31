export EDITOR=vim
export BROWSER=chromium
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/code/go
export FLUTTER_HOME=/opt/flutter
export PATH=$PATH:$FLUTTER_HOME/bin
export PATH=$PATH:$HOME/scripts

# Work Related env
if [ -f ~/.work_env ]; then
    . ~/.work_env
fi