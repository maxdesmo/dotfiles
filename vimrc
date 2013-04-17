" Enable pathogen. Manages vim runtimepath. It makes it easy to install plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Remap leader to be [
let mapleader = "["
let maplocalleader = "["

" Syntax highlighting
syntax on

" Need t_Co for powerline
set t_Co=16

" Solarized color scheme (managed by pathogen)
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" Higlight search
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" UTF8 as standard encoding
set encoding=utf8

" Unix as standard file type
set ffs=unix,dos,mac

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Use spaces instead of tabs
set expandtab

" One tab = 4 spaces (this can be overriden for differnet file types using
" after/ftplugin/<filetype>.vim)
set shiftwidth=4
set tabstop=4

" Indent and wrap
set ai    " Auto
set wrap  " Wrap lines

" Indent based on filetype
if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on
endif

" Show line numbers
set number

" Add perl syntax highlighting for psgi ext
au BufNewFile,BufRead *.psgi set filetype=perl

" Remap ESC to Enter key in insert mode. Press ctlr+enter to insert enter
inoremap <CR> <Esc>

" Toggle folder browser
map <F2> :NERDTreeToggle<CR>

" Comment command easily using leader c
map <leader>c <c-_><c-_>

" Powerline. Pretty status line with cool symbols
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2

" Display a vertical line on the 79 column mark to encourage short lines of text
set colorcolumn=80

" Switch between windows easily (useful when using NERDTree)
nmap <S-Tab> <C-W><C-W>

" Swap the selected window with the next window
nmap <S-X> <C-W><C-X>

" Make the NERDTree window a little wider
let g:NERDTreeWinSize = 43

" bufExplorer settings
let g:bufExplorerShowRelativePath = 1

" Split right and below by default
set splitright
set splitbelow
