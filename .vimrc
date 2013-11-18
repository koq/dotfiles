" 基本設定
" ---------------------------------------------------
" change leader 
let mapleader=","
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

" テキスト整形オプション，マルチバイト系を追加
set formatoptions=lmoq          

" カーソルを自動的に()の中へ
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>
imap // //<left>
imap /// ///<left>

" ----------------------------------------------------
" vundle installed plugin

" vundle
set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'

" Color Scheme solarized
Bundle 'altercation/vim-colors-solarized'

" Color Scheme monokai
Bundle 'sickill/vim-monokai'

" Color Scheme molokai
Bundle  'tomasr/molokai'

" sudo.vim
Bundle 'sudo.vim'

" powerline
Bundle 'Lokaltog/vim-powerline'

" NERDtree
Bundle 'scrooloose/nerdtree'

" fugitive.vim
Bundle 'fugitive.vim'

" evervim
Bundle 'kakkyz81/evervim'

" scrooloose / syntastic
Bundle 'scrooloose/syntastic'

" stephpy/vim-php-cs-fixer
Bundle 'stephpy/vim-php-cs-fixer'

" Zencoding.vim
Bundle 'mattn/zencoding-vim'

" smarty.vim
Bundle 'vim-scripts/smarty.vim'
" ----------------------------------------------------
" plugin configure

" evervim configure
let g:evervim_devtoken='S=s277:U=22334c5:E=142ec86fa19:C=13b94d5ce1a:P=1cd:A=en-devtoken:H=119a7854b74c7b28493feabbb7e71dde'

" solarized Configure
let g:solarized_bold=0
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='high'
let g:solarized_visibility='high'
set background=light

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
let scheme = 'monokai'

" colorsheme function cui gui
augroup guicolorscheme
  autocmd!
    execute 'autocmd GUIEnter * colorscheme' scheme
    augroup END
   execute 'colorscheme' scheme

" /php-cs-fixer
let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
