set number

"vi との互換性OFF
set nocompatible

" ファイル形式の検出を無効にする
filetype off
 
set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'

" Color Scheme
Bundle 'altercation/vim-colors-solarized'

filetype plugin on
filetype indent on

" Color Scheme Configure
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_degrade=1
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='high'
let g:solarized_visibility='high'
syntax enable
set background=dark
"colorscheme solarized

" カラースキーム
 let scheme = 'solarized'
 augroup guicolorscheme
   autocmd!
     execute 'autocmd GUIEnter * colorscheme' scheme
     augroup END
     execute 'colorscheme' scheme

" github にあるプラグイン
Bundle 'sudo.vim'

Bundle 'Lokaltog/vim-powerline'

"set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]
"set t_Co=256
" vim-powerline
 let g:Powerline_symbols = 'fancy'
 let g:Powerline_stl_path_style = 'short'
" vim-scripts プラグイン

" github にないプラグイン
