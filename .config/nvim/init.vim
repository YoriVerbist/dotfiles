"""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""

" Syntax highlighting
syntax enable

" tab is 4 spaces
set tabstop=4
set shiftwidth=4
" replace tabs with spaces
set expandtab
" auto indent (use the same indent as the previous line)
set ai
" show line numbers
set number relativenumber
" highlight searches when searching
set hlsearch
" highlight current line
set cursorline
set ruler
" show matching brackets
set showmatch
" long lines don't wrap
set nowrap

" jk is escape
inoremap jk <esc>

" <Leader> key
let mapleader = " "

" make sure .pl files are interpreted as prolog files
let g:filetype_pl="prolog"

"""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""

call plug#begin()

" Nerdtree
Plug 'preservim/nerdtree'

" nord-vim colorscheme
Plug 'arcticicestudio/nord-vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Ale
Plug 'dense-analysis/ale'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vimtex
Plug 'lervag/vimtex'

call plug#end()

"""""""""""""""""""""""""""""
" Plugin changes
"""""""""""""""""""""""""""""

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" NERDTree
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" fix files on save
let g:ale_fix_on_save = 1

" lint after 1000ms after changes are made both on insert mode and normal mode
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

" use nice symbols for errors and warnings
let g:ale_sign_error = '✗\ '
let g:ale_sign_warning = '⚠\ '

" fixer configurations
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black'],
\   'javascript': ['eslint'],
\   'typescript': ['prettier'],
\   'html': ['prettier'],
\   'json': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'haskell': ['hlint'],
\}

" Vimtex
let g:vimtex_view_method = 'zathura'

" nord settings
let g:nord_cursor_line_number_background = 1

" Colorscheme and Grey comments
colorscheme nord
highlight Comment ctermfg=grey


" show the status line all the time
set laststatus=2
