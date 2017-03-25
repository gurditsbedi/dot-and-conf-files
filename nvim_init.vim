
" Vim Plug {{{
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
Plug 'gagoar/stripwhitespaces'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'
Plug 'Rip-Rip/clang_complete', { 'for': ['c', 'cpp'] }
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'sjl/badwolf/'
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
"nnoremap gV `[v`] " visual select whole file
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

" How they Help? {{{
"set mat=2
"set magic
"set lazyredraw
"set lbr
"set tw=500
"set si "Smart indent
"set wrap "Wrap lines
"set complete-=i
" }}}

" vim:foldmethod=marker:foldlevel=0
