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
Plugin 'arcticicestudio/nord-vim'
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
Plugin 'christoomey/vim-tmux-navigator'
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
"set runtimepath^=~/.vim/undle/ctrlp.vim

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
set autoread
set lazyredraw
set nocursorline
set nocursorcolumn
set scrolljump=8

set ignorecase
set smartcase

"let g:solarized_termcolors= 256
"let g:solarized_termtrans = 1

set t_Co=256
colorscheme solarized
"let g:nord_comment_brightness = 5
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

map <c-t> :Buffers<CR>
map <c-p> :GFiles<CR>
map <c-f> :Lines<CR>
map <c-d> :bd<CR>
map ˙ :bp<CR>
map ¬ :bn<CR>
map <c-n> :NERDTreeToggle %<CR>

nmap <space> <leader>
" Move to the next buffer

map <leader>d "_


nnoremap A ^
nnoremap S $
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <c-c> :nohl<CR><c-c>

nnoremap vv <C-w>v
nnoremap vH <C-w>s
command! CopyBuffer let @+ = expand('%:p')

"let g:ctrlp_max_files=0
"let g:ctrlp_max_depth=40
"let g:ctrlp_max_height=30
"let g:ctrlp_mruf_case_sensitive=0
"let g:ctrlp_custom_ignore={'dir':'\.git$\|target$\|target-development$\|\.svn$\|logs$', 'file':'TEST.*\.xml$\|Test\.txt$\|\.\(png\|gif\|jpg\|jpeg\|sh\|tar\|gz\|bin\|iml\|jar\|class\|ico\|pdf\|psd\|vsd\|doc\|ppt\|xls\|eps\|tiff\|log\|swf\|as\|fugitiveblame\|zip\|gz\|gzip\|tgz\|tar\|bz\|bz2\|o\|cache\)$\|en_CA$\|fr_CA$'}
"let g:ctrlp_mruf_exclude='\.git/\|target/\|target-development/\|\.svn/\|logs/\|TEST.*\.xml$\|Test\.txt$\|\.\(png\|gif\|jpg\|jpeg\|sh\|tar\|gz\|bin\|iml\|jar\|class\|ico\|pdf\|psd\|vsd\|doc\|ppt\|xls\|eps\|tiff\|log\|swf\|as\|fugitiveblame\|zip\|gz\|gzip\|tgz\|tar\|bz\|bz2\|o\|cache\)$\|en_CA$\|fr_CA$'
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_char = '┊'
let g:indentLine_first_char = '┊'
let g:indentLine_color_term = 237
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_leadingSpaceChar = '·'

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Yank to system clipboard
set clipboard=unnamed

" Swap files somewhere else pls
"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//
"set undodir=~/.vim/undo//et directory^=$HOME/.vim/tmp//

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

