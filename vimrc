" ===
" === Editor behavior
" ===
"set exrc
"set secure
set number
set relativenumber
set cursorline
"set hidden
"set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set autoindent
"set list
"set listchars=tab:\|\ ,trail:▫
"set scrolloff=4
"set ttimeoutlen=0
"set notimeout
"set viewoptions=cursor,folds,slash,unix
"set wrap
"set tw=0
"set indentexpr=
"set foldmethod=indent
"set foldlevel=99
"set foldenable
"set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
"set inccommand=split
"set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
"set visualbell
silent !mkdir -p $HOME/.vim/tmp/backup
silent !mkdir -p $HOME/.vim/tmp/undo
"silent !mkdir -p $HOME/.vim/tmp/sessions
set backupdir=$HOME/.vim/tmp/backup,.
set directory=$HOME/.vim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.vim/tmp/undo,.
endif
set colorcolumn=100
set updatetime=100
set virtualedit=block



" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
noremap ; :
" Save & quit
noremap Q :q<CR>
" noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e $HOME/.vim/vimrc<CR>
noremap <LEADER>rv :e .nvimrc<CR>


" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y


" Indentation
nnoremap < <<
nnoremap > >>

" Delete find pair
nnoremap dy d%


" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1


" Folding
noremap <silent> <LEADER>o za

" Faster in-line navigation
noremap W 5w
noremap B 5b

" ===
" === Searching
" ===
noremap - N
noremap = n



" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>u <C-w>k
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>i <C-w>l
noremap qf <C-w>o

" Disable the default s key
noremap s <nop>


" find and replace
noremap \s :%s//g<left><left>




" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('~/.vim/plugged')


call plug#end()
