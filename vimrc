set nocp
call pathogen#infect()

"""""""""""" gVim remove toolbars and scrolls, set console size
" set guioptions-=m  "remove menu bar
" set guioptions-=T  "remove toolbar
" set guioptions-=r  "remove right-hand scroll bar
" set guioptions-=L  "remove left-hand scroll bar
" set guifont=Consolas:h14
" set lines=40 columns=130

set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set mouse=r
set nocompatible
set nospell
set t_Co=256
set cursorcolumn
set cursorline 
set pastetoggle=<F2>
set relativenumber
set number
set virtualedit=onemore
set history=9999
set splitbelow
set splitright
set pastetoggle=<F2>
set mouse=a
set autowrite
set showmode
set showcmd
set wrap
set equalalways
set wildmenu
set wildmode=list:longest,full
set gdefault

" set autoindent
set expandtab
set shiftwidth=4
" set tabstop=2
set softtabstop=4

set foldmethod=manual
set ignorecase
set hlsearch
set fileencoding=utf-8
set backspace=indent,eol,start
set smartcase
set gdefault
set incsearch
set showmatch
set winheight=10
set nolist
set noswapfile
set visualbell
set colorcolumn=80
set noesckeys
set clipboard=unnamedplus
colorscheme monokai
syntax on
filetype on
filetype plugin on
filetype plugin indent on

hi CursorLine cterm=NONE ctermbg=black guibg=black
hi CursorColumn cterm=NONE ctermbg=black guibg=black
hi ColorColumn guibg=black

let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-y>'
let g:NERDTreeMinimalUI=1
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_symbols_space = "\ua0"
let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_working_path_mode = 0
let g:airline#extensions#tabline#enabled=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let NERDTreeQuitOnOpen=0
let bclose_multiple = 0
let mapleader="\<Space>"
let b:vcm_tab_complete = 'dict'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|vendor)$'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  endif

autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
"""""""""""" Sets the working directoy to current file's directory
"autocmd BufEnter * lcd %:p:h
"autocmd BufEnter * silent! lcd %:p:h

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
imap <C-v> <ESC>"+pi
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
map <C-v> "+p
map <C-c> "+y
map <Tab> <Nop>
"map <leader>, :resize 1000<CR>:vertical resize 95<CR>
"map ' ,<ESC>
"map <C-f> 5j
"map <C-s> 5k
map <leader>k :NERDTreeTabsToggle<CR>:vertical resize 45<CR>
map <leader>m :NERDTreeTabsFind<CR>
map <leader>1 :vertical resize 30<CR>
map <leader>2 :vertical resize 55<CR>
map <leader>3 :vertical resize 80<CR>
map <leader>x :split<CR>
map <leader>z :vsplit<CR>
map <leader>n :nohl<CR>
map <leader>h :tabprevious<CR>
map <leader>l :tabnext<CR>
map <leader>t :tabnew<CR>
map <leader>a :bprevious<CR>
map <leader>f :bnext<CR>
map <leader>w :tabclose!<CR>
" map <leader>w :bd!<CR>
" map <leader>e :only<CR>
" map <leader>r :BufOnly!<CR>
map <leader>W :NERDTreeTabsClose<CR>:bufdo bd!<CR>
map <leader>e :tabonly<CR> :BufOnly!<CR>
map <leader>s :execute "tabmove" tabpagenr() - 2 <CR>
map <leader>d :execute "tabmove" tabpagenr() + 1 <CR>
map <C-Up> ddkkp
map <C-Down> ddp
map <C-a> ggvG$
map <C-x> "+ygvd
map <C-g> :vimgrep 
map <C-b> :Bookmark 
map <C-o> 8<C-w><
map <C-i> 8<C-w>>
map < <gv
map > >gv
"map = 4<C-w>+
"map - 4<C-w>-
map = :vertical resize +5 <CR>
map - :vertical resize -5 <CR>
map <C-d> <C-d>zz
