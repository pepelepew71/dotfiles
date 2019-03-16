"# plugin : vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim' " autoindent
Plugin 'Yggdroot/indentLine' " indentline
Plugin 'vim-scripts/BufOnly.vim' " unload all buffers but the current one
Plugin 'joshdick/onedark.vim' " theme
Plugin 'scrooloose/nerdcommenter' " keybind comment
Plugin 'jistr/vim-nerdtree-tabs' " open nerdtree in all tabs
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
Plugin 'scrooloose/nerdtree' " file browser
let NERDTreeIgnore=['.idea', '.vscode', 'node_modules', '*.pyc']
let NERDTreeShowLineNumbers = 0
let g:NERDTreeWinPos = 'right'
let NERDTreeBookmarksSort = 1
let NERDTreeShowBookmarks = 1
Plugin 'Valloric/YouCompleteMe' " auto completion
set completeopt-=preview " no preview window
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
Plugin 'majutsushi/tagbar' " python code structure map
let g:tagbar_left = 1 " open at left
call vundle#end()            " required
filetype indent plugin on    " required

"# lang and encoding
set encoding=utf-8
set langmenu=zh_TW
let $LANG = 'en_US.UTF-8'

"# general
set nobackup
set noswapfile " no swap file
set nobomb " remove BOM
set nohlsearch " no search highlight
set mouse=a " enable mouse copy (complicated)
set showmatch " show the matching part of the pair for [] {} and ()
set autochdir " set working directory same with current editing file
set history=512
set clipboard=unnamed " yank to system clipboard, require vim-gtk
set laststatus=2 " show status at bottom
set timeoutlen=2000 " combine key timeout
set ttimeoutlen=0 " ESC timeout
set path+=** " :e file automplete in subdirectories
set wildmenu " enable tab completion in command mode
set nolist " dont show tailing space or tab
set nowrap " no wrap
let g:indentLine_setConceal = 0 " disable conceal in markdown

"# gui
colorscheme onedark
set cursorline " highlight current line
set t_Co=256 " support 256 colors
set background=dark

"## use relative line number
set nu rnu

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  autocmd BufEnter NERD_*                    set norelativenumber
  autocmd BufEnter __Tagbar__*               set norelativenumber
augroup END

"## default split location
set splitbelow
set splitright

"# format
set foldmethod=indent
set foldlevel=99
set tabstop=4
set expandtab
set softtabstop=4
syntax on

"## indent
set autoindent
set smartindent
set cindent
set shiftwidth=4
set indentexpr=

"# keymap
let mapleader = " "

"## insert current time
nnoremap <F12> a<C-R>=strftime("%Y-%m-%d %I:%M:%S")<CR><Esc> 

"## toggle tagbar
nnoremap <F8> :TagbarToggle<cr>

"## toggle nerdtree
"nnoremap <C-n> :NERDTreeToggle<CR>
map <C-n> <plug>NERDTreeTabsToggle<CR>

"## tootle wrap
nnoremap <leader>w :set wrap!<cr>

"## toogle sympyfold folding
nnoremap <leader>f za

"## tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>

"## buffer
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>bc :BufOnly<cr>
nnoremap <leader>ls :ls<cr>

"## split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"## toggle autoindent
nnoremap <F10> :set autoindent! cindent! smartindent!<cr>

"# setting for specified file
"## python
au BufNewFile,BufRead *.py
    \ nnoremap <F2> <Esc> :w<cr> :exec '!python' shellescape(@%, 1) <cr>

"## latex
au BufNewFile,BufRead *.tex
    \ setl noai nocin nosi inde= |
    \ let g:tex_indent_brace = 0 |
    \ nnoremap <F2> <Esc> :w<cr> :exec '!pdflatex' shellescape(@%, 1) <cr> |
    \ nnoremap <F3> <Esc> :w<cr> :exec '!bibtex' shellescape(expand('%:r').'.aux', 1) <cr> |
    \ nnoremap <F4> <Esc> :w<cr> :exec '!xelatex' shellescape(@%, 1) <cr>

"## launch (ROS)
au BufNewFile,BufRead *.launch set filetype=xml

