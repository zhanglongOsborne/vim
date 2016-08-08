"set runtimepath+=~/.vim_runtime
"source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim
"source ~/.vim_runtime/vimrcs/ctrlp.vim
"try
"source ~/.vim_runtime/my_configs.vim
"catch
"endtry

set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/scrooloose/nerdtree'
Plugin 'git://github.com/scrooloose/syntastic'
Plugin 'git://github.com/bling/vim-airline'
"Plugin 'git://github.com/majutsushi/tagbar'
Plugin 'git://github.com/Valloric/YouCompleteMe'
Plugin 'git://github.com/vim-scripts/DoxygenToolkit.vim'
"Plugin 'git://github.com/Shougo/neocomplcache.vim'
"Plugin 'git://github.com/nanotech/jellybeans.vim'
call vundle#end()
filetype plugin indent on

set laststatus=2
"let g:airline_powerline_fonts=1
let g:jellybeans_use_lowcolor_black=0
let g:NERDTreeDirArrows=0
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#tagbar#enabled=1
let g:airline#extensions#whitespace#symbol='!'
let g:airline#extensions#tabline#enabled = 1

"syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
"highlight SyntasticErrorSign guifg=white guibg=green
let g:syntastic_enable_highlighting = 0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"Doxygen config

"Tagbar config
Bundle 'majutsushi/tagbar'
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width=30
let g:tagbar_right = 1
map <F6> :TagbarToggle<CR>
"let g:tagbar_autopreview = 1

"NERDTree 
nmap <F5> :NERDTree <CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set ts=4 	"Num of tab spaces
set nu
set ai 		"Set auto indenting on
set foldmethod=indent
"za
"zf
"zR
"zM
" NERDTree need this
set encoding=utf-8
filetype on
"Set colorscheme
"colorscheme distinguished
colorscheme monoacc
"Make your cursor always be center vertically
set scrolloff=8
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
set autoread
syntax enable
