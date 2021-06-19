
syntax on
let mapleader = ","
set encoding=utf-8
set textwidth=80
set number
set relativenumber
set nomodeline
set splitbelow
set splitright
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0   " Disable modelines as a security precaution
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set ruler
set shiftwidth=2
set autoindent
set smartindent
colorscheme dracula

" Custom shortcuts
map <leader><Space> :noh<cr>
nnoremap <silent><leader>sh :terminal<CR>
:tnoremap <Esc> <C-\><C-n>


