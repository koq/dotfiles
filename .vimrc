" 基本設定
" ---------------------------------------------------
" vi との互換性OFF
set nocompatible

" 行番号表示
set number

" バックアップを作らない
set nobackup

" シンタックスを有効
syntax enable

" ファイル形式の検出有効にする
filetype on
filetype plugin on
filetype indent on

" カーソル行をハイライト
set cursorline

" インデントをスペース4つに
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

" カレントウィンドウにのみ罫線を引く
augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END
:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" ;でコマンド入力( ;と:を入れ替え)
noremap ; :
noremap : ;

" ----------------------------------------------------
" vundle installed plugin

" vundle
set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'

" Color Scheme solarized
Bundle 'altercation/vim-colors-solarized'

" Color Scheme molokai
Bundle  'tomasr/molokai'

" sudo.vim
Bundle 'sudo.vim'

" powerline
Bundle 'Lokaltog/vim-powerline'

" NERDtree
Bundle 'scrooloose/nerdtree'

" ----------------------------------------------------
" plugin configure

" solarized Configure
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='high'
let g:solarized_visibility='high'
set background=dark

" powerline configure
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_stl_path_style = 'short'

" NERDtree configulation
" デフォルトでNERDTreeを開く
autocmd VimEnter * NERDTree ./

" molokai configulation
let g:molokai_original = 1

" ----------------------------------------------------
" set colorscheme
let scheme = 'solarized'

" colorsheme function cui gui
augroup guicolorscheme
  autocmd!
    execute 'autocmd GUIEnter * colorscheme' scheme
    augroup END
    execute 'colorscheme' scheme
