alias ls='ls -l --color=auto'
alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alh'
alias la='ls -A'
alias mux='tmuxinator.ruby2.7'
alias ipython=ipython3

# Buser Stuff
alias buserfin='npm run dev:disable-mock'
alias buserfin:mock='npm run dev'
alias staff='PORT=3003 yarn dev:disable-mock'
alias staff:mock='PORT=3003 yarn dev'
alias parceiro='PORT=3001 yarn dev:disable-mock'
alias parceiro:mock='PORT=3001 yarn dev'
alias motorista='PORT=3002 yarn dev:disable-mock'
alias motorista:mock='PORT=3002 yarn dev'
alias buser='PORT=3000 yarn dev:disable-mock'
alias buser:mock='PORT=3000 yarn dev:all'

alias sshrenew='python ~/code/pritunl-zero-client/ssh_client.py; ssh-add -D; cp ~/.ssh/bast-cert00.pub ~/.ssh/bast-cert.pub; ssh-add ~/.ssh/bast; cp ~/.ssh/bast-cert01.pub ~/.ssh/bast-cert.pub; ssh-add ~/.ssh/bast; ssh-add'

alias cdd='cd ~/code/buser_django && source .venv/bin/activate'
alias ptt='pytest -n auto --durations=10 -q -p no:warnings'
alias gdev='git checkout dev && git pull --rebase && git checkout - && git merge dev'
