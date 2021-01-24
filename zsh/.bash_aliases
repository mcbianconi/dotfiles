alias vim=nvim
alias ls='ls -l --color=auto'
alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias mux=tmuxinator
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

function coverage_cteos {
    coverage run ./manage.py test \
      core.tests.testes_adapters.test_cteos_adapter \
      core.tests.testes_empresa.test_empresa_emissao_cteos \
      core.tests.test_nota_fiscal \
      core.tests.testes_empresa.test_empresa_cancelamento_cteos \
      core.tests.testes_empresa.test_empresa_notafiscal_actions \
      core.tests.testes_command.test_command_cteos_atualiza_notas_fiscais \
      core.tests.testes_command.test_command_enviar_notas_fiscais_para_empresa \
      core.tests.test_ops_pagamento_company \
      ext.tests.test_update_tecnospeed \
      --parallel=8 --k
    coverage combine
    coverage html
}

function buser_teste {
  cmd = './manage.py test core --parallel 8 --no-input'

  while getopts 'k' flag; do
    case "${flag}" in
      k) cmd="$cmd' --keep ";;
      *) print_usage
	exit 1 ;;
    esac
  eval $cmd
  done
}

function start_buser {
  i3-msg 'workspace 1; exec google-chrome' &&
  i3-msg 'workspace 2; exec code' &&
  i3-msg 'workspace 3; exec kitty -e tmux' &&
  i3-msg 'workspace 4; exec slack' &&
  i3-msg 'workspace 5; exec gitkraken' &&
  i3-msg 'workspace 1'
}
