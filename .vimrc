set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'dracula/vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'drewtempelmeyer/palenight.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'Yggdroot/indentLine'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'

Plugin 'ervandew/supertab'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"set runtimepath^=~/.vim/bundle/ctrlp.vim

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

syntax on
set hidden
set number
set ruler
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set statusline+=%F
set showcmd
set noshowmode
set hlsearch
set backspace=indent,eol,start
set colorcolumn=120

set ignorecase
set smartcase

let g:solarized_termcolors= 256
let g:solarized_termtrans = 1

set termguicolors
colorscheme palenight
set background=dark

hi Search guibg=LightRed

" for better rendering
set ttyfast

" for faster updating of ui for gitgutter
set updatetime=100

" for faster updating of ui for airline
set ttimeoutlen=50

"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

" fzf junk
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

map <c-b> :Buffers<CR>
map <c-p> :GFiles<CR>
map <c-f> :Lines<CR>
map <c-h> :bp<CR>
map <c-l> :bn<CR>
map <c-\> :NERDTreeToggle %<CR>
nnoremap <c-c> :noh<return><c-c>

" Plays macro
nnoremap <Space> @q
command! CopyBuffer let @+ = expand('%:p')

"let g:ctrlp_max_files=0
"let g:ctrlp_max_depth=40
"let g:ctrlp_max_height=30
"let g:ctrlp_mruf_case_sensitive=0
"let g:ctrlp_custom_ignore={'dir':'\.git$\|target$\|target-development$\|\.svn$\|logs$', 'file':'TEST.*\.xml$\|Test\.txt$\|\.\(png\|gif\|jpg\|jpeg\|sh\|tar\|gz\|bin\|iml\|jar\|class\|ico\|pdf\|psd\|vsd\|doc\|ppt\|xls\|eps\|tiff\|log\|swf\|as\|fugitiveblame\|zip\|gz\|gzip\|tgz\|tar\|bz\|bz2\|o\|cache\)$\|en_CA$\|fr_CA$'}
"let g:ctrlp_mruf_exclude='\.git/\|target/\|target-development/\|\.svn/\|logs/\|TEST.*\.xml$\|Test\.txt$\|\.\(png\|gif\|jpg\|jpeg\|sh\|tar\|gz\|bin\|iml\|jar\|class\|ico\|pdf\|psd\|vsd\|doc\|ppt\|xls\|eps\|tiff\|log\|swf\|as\|fugitiveblame\|zip\|gz\|gzip\|tgz\|tar\|bz\|bz2\|o\|cache\)$\|en_CA$\|fr_CA$'
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:indentLine_showFirstIndentLevel = 1

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Yank to system clipboard
set clipboard=unnamed

