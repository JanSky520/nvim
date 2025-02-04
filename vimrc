call plug#begin()
    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'luochen1990/rainbow'
    Plug 'yianwillis/vimcdoc'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

set ambiwidth=double
set autochdir
set autoindent
set autoread
set autowrite
set autowriteall

set background=dark
set backspace=indent,eol,start
set backupcopy=auto
set belloff=all
set binary 
set breakindent       
set browsedir=buffer
set bufhidden=wipe

set conceallevel=2

set nobackup

set wildmenu

set pumwidth=10
set pumheight=10

set cursorline
set encoding=utf-8
set number
set nobackup
set nowritebackup
set mouse=a
set hlsearch
set incsearch
set ignorecase
set termguicolors
set smartindent
set tabstop=4
set shiftwidth=4
set showcmd
set expandtab
set clipboard=unnamedplus
set updatetime=200
set signcolumn=number

" 快捷键设置
let mapleader = " "
let maplocalleader = " "
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" 主题设置
let g:tokyounight_style = 'night'
let g:tokyonight_enable_italic = 0
let g:rainbow_active = 1
colorscheme tokyonight
syntax on
let &t_SI = "\e[5 q"  
let &t_SR = "\e[3 q"  
let &t_EI = "\e[1 q" 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#whitespace#enabled = 1

let g:airline_symbols = {}
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" COC设置
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <Leader>h :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


