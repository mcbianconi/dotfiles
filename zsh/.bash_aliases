alias vim=nvim
alias ls='ls -l --color=auto'
alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
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
alias buser:teste='./manage.py test core --parallel 8 --keep'
alias buser:teste-wipe='./manage.py test core --parallel 8'
