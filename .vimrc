"          ( O O )
" =======oOO=(_)==OOo====== 
" vim config
" author Rinat Sabitov aka histrio
" created: Nov 2010
" =======oOO======OOo======

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Raimondi/delimitMate'
Plugin 'takac/vim-hardtime'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'fatih/vim-go'
Plugin 'wakatime/vim-wakatime'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'baverman/vial'
Plugin 'baverman/vial-http'
"Plugin 'mileszs/ack.vim'
Plugin 'wsdjeg/vim-fetch'

"Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ajh17/VimCompletesMe'

"Complete
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"
" Themes
Plugin 'morhetz/gruvbox'
Plugin 'arcticicestudio/nord-vim'
"Plugin 'w0ng/vim-hybrid'
"Plugin 'sickill/vim-monokai'
"Plugin 'dracula/vim', { 'name': 'dracula' }
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'nanotech/jellybeans.vim'

call vundle#end()

"filetype plugin indent on 

filetype on 
filetype plugin on
"syntax on 

set hidden
set tabstop=4
set shiftwidth=4
"set smarttab
set expandtab
set softtabstop=4
"set autoindent
set autowrite
"set esckeys
set ignorecase
set smartcase
set nu
set mousehide
set mouse=a
set novisualbell
set termencoding=utf-8
set t_vb= 
set linebreak 
set hlsearch
set cursorline
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
set showcmd
set noswapfile

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=e  "tabs
set guioptions-=L  "more scrollbars

autocmd BufWritePre *.py :%s/\s\+$//e 
autocmd BufWritePre *.yml :%s/\s\+$//e 
autocmd BufWritePre *.sh :%s/\s\+$//e 

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.pyc$','\.orig$',] 
let g:gggntrlp_working_path_mode = 'ra'
let g:go_version_warning = 0
" let g:hardtime_default_on = 1
" let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]

nmap <F1> <nop>
nnoremap Q <Nop>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <S-F2> :NERDTreeToggle<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
cnoreabbrev W w
cnoreabbrev Wq wq
imap jj <esc>
nnoremap <c-p> :FZF<cr>
nnoremap <C-g> :Rg<cr>

" set relativenumber
set foldmethod=marker

set termguicolors
set background=dark
"silent! colorscheme gruvbox
silent! colorscheme nord

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

let g:vcm_tab_complete = 'vim'
let g:NERDTreeGitStatusWithFlags = 1
