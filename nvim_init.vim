" Vim Plug {{{
call plug#begin('~/.local/share/nvim/site/autoload/')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'Rip-Rip/clang_complete', { 'for': ['c', 'cpp'] }
Plug 'Shougo/denite.nvim'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'sjl/badwolf/'
Plug 'rust-lang/rust.vim'
Plug 'johngrib/vim-game-code-break'
Plug 'heavenshell/vim-pydocstring'
call plug#end()
"}}}
" Colors {{{
syntax enable           " enable syntax processing
colorscheme badwolf
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 3
set encoding=utf8
set termguicolors
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
set scrolloff=7         " Set 7 lines to the cursor - when moving vertically using j/k
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
" }}}
" Backups {{{
set backup
set writebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" }}}
" neovim {{{
let g:python3_host_prog = '/usr/bin/python3'
" }}}
" airline {{{
set laststatus=2
let g:airline_theme = 'zenburn'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
" }}}
" nerdtree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}
" deoplete {{{
let g:deoplete#enable_at_startup = 1
let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang-3.8.so.1'
autocmd CompleteDone * pclose!
" }}}
" Custom Functions {{{
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
" }}}
" autocmd {{{
" Delete Trailing Spaces automatically
autocmd BufWritePre * %s/\s\+$//e
" }}}
" Leader Shortcuts {{{
let mapleader=","
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>1 :set number!<CR>
vnoremap <leader>y "+y
" }}}
" helpers{{{
nnoremap Q <nop>
" }}}

" vim:foldmethod=marker:foldlevel=0
