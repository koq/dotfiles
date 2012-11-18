set number

" vi との互換性OFF
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
let g:solarized_termcolors=256 
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

" vim-scripts プラグイン

" github にないプラグイン
