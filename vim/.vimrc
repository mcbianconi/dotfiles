let mapleader = ","
set nocompatible              " be iMproved, required
syntax on

" PANES MOVEMENT
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" PREFERENCES
set autoindent
set autowrite     " Automatically :write before running commands
set backspace=2   " Backspace deletes like most programs in insert mode
set encoding=utf-8
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=1  " Always display the status line
set modelines=0   " Disable modelines as a security precaution
set nobackup
set nomodeline
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set nowritebackup
set number
set relativenumber
set ruler
set shiftwidth=2
set showcmd       " display incomplete commands
set smartcase
set smartindent
set splitbelow
set splitright
set textwidth=80

" Custom shortcuts
:tnoremap <Esc> <C-\><C-n>
map <leader><Space> :noh<cr>
nnoremap <silent><leader>sh :terminal<CR>
