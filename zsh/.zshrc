# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mcbianconi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git copyfile z django)

source $ZSH/oh-my-zsh.sh
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# NVM hack to improve startup spped
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -f __init_nvm)" = function ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
	declare -a __node_commands=(nvm `find -L $NVM_DIR/versions/*/*/bin -type f -exec basename {} \; | sort -u`)
	function __init_nvm() {
		for i in "${__node_commands[@]}"; do unalias $i; done
		. "$NVM_DIR"/nvm.sh
		unset __node_commands
		unset -f __init_nvm
	}
	for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi


# Direnv load
#eval "$(direnv hook zsh)"
