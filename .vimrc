"USER SETTINGS
let mapleader=" "

set mouse=a
set termguicolors 
set noshowmode
set number
set relativenumber

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set scrolloff=4

set autoindent
set smartindent
set ignorecase
set smartcase

set nowrap

set nohlsearch
set incsearch
  
set pumheight=10
set cmdheight=1

set noswapfile

set splitbelow
set splitright

set backspace="indent,eol,start"
set updatetime=50
set path+=**

"USER REMAPS
"Append with J
nnoremap J mzJ`z

"Search term in the middle of screen
nnoremap n nzz
nnoremap N Nzz

"Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Better half window scroll
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"Window management
nnoremap <leader>sv <C-w>v
nnoremap <leader>sh <C-w>s
nnoremap <leader>se <C-w>=
nnoremap <leader>sx :close<CR>
nnoremap <leader>sm :MaximizerToggle<CR>

"Tab management
nnoremap <leader>to :tabnew<CR>
nnoremap <leader>tx :tabclose<CR>
nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>

"Move text up and down
vnoremap J :move '>+1<CR>gv-gv
vnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv

"Copy hacks
nnoremap <leader>Y "+Y
nnoremap <leader>y "+y
nnoremap <leader>d "_d
nnoremap <leader>p "_dP

vnoremap <leader>y "+y
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

xnoremap <leader>y "+y
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

"Find Files
nnoremap <leader>f :find 

"Toggle relative line numbers
nnoremap <leader>n :set relativenumber!<CR>


"Plugins
call plug#begin()

"Colorscheme
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

"Tmux integration
Plug 'christoomey/vim-tmux-navigator'

"Maximize windows
Plug 'szw/vim-maximizer'

"Autopairs
Plug 'jiangmiao/auto-pairs' 

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Utils
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'

call plug#end()

let g:airline#extensions#whitespace#enabled = 0
colorscheme catppuccin_mocha
