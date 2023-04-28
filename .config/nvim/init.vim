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

set noswapfile

let g:ale_disable_lsp = 1


"""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""

call plug#begin()

Plug 'preservim/nerdtree'

Plug 'arcticicestudio/nord-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'dense-analysis/ale'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lervag/vimtex'

call plug#end()

"""""""""""""""""""""""""""""
" Plugin changes
"""""""""""""""""""""""""""""

" Start NERDTree when Vim is started without file arguments.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" NERDTree
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" fix files on save
let g:ale_fix_on_save = 1

" lint after 500ms after changes are made both on insert mode and normal mode
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 500

" use nice symbols for errors and warnings
let g:ale_sign_error = '✗\ '
let g:ale_sign_warning = '⚠\ '

" disable linting for languages coc is used for
let g:ale_linters = {
\   'c': [], 'cpp': [], 'rust': [], 'go': [], 'python': [], 'sh': [],
\   'html': [], 'css': [], 'javascript': [], 'typescript': [], 'reason': [],
\   'json': [], 'vue': [],
\   'tex': [], 'latex': [], 'bib': [], 'bibtex': []
\ }


" fixer configurations
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\   'typescript': ['prettier'],
\   'html': ['prettier'],
\   'json': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'haskell': ['hlint'],
\}


" FZF
map <silent> <C-p> :Files<CR>
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>

" Coc

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <F2> <Plug>(coc-rename)

let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-json',
  \ 'coc-docker',
  \ 'coc-prettier',
  \ 'coc-pyright',
  \ ]

" Vimtex
let g:vimtex_view_method = 'zathura'
let g:tex_flavor='latex'

" nord settings
let g:nord_cursor_line_number_background = 1

" Colorscheme and Grey comments
colorscheme nord
"highlight Comment ctermfg=grey


" show the status line all the time
set laststatus=2
