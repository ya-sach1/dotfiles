" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'))
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " General
  Plug 'sheerun/vim-polyglot'
  Plug 'bling/vim-airline'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'stoozy/vimcord'
  Plug 'jiangmiao/auto-pairs'

  " Syntax
  Plug 'HerringtonDarkholme/yats.vim'


  " Themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'

call plug#end()

set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set completeopt-=preview          " remove the horrendous preview window
set encoding=utf-8
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=tab:\-\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set number                        " show number ruler
set relativenumber                " show relative numbers in the ruler
set ruler
set formatoptions=tcqronj         " set vims text formatting options
set softtabstop=4
set tabstop=4
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often"

colorscheme nord
let g:airline_theme='nord'

let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-tsserver',
      \ 'coc-json',
      \ 'coc-go',
      \ ]

let g:prettier#config#print_width = 'auto'
let g:prettier#config#tab_width = '4'
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#prose_wrap = 'preserve'
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#require_pragma = 'false'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')
let g:prettier#quickfix_enabled = 0

