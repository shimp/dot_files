set nocompatible
filetype off


if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif


"originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'https://bitbucket.org/kovisoft/slimv'



filetype plugin indent on
filetype indent on




"NERDTree Setting
"NERDTreeToggle set
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>

"NERDTreeのツリーの幅
"Default: 31.
let g:NERDTreeWinSize=45



"NERDTreeShowHidden 隠しファイルを表示
"f コマンドの設定値
"0 : 隠しファイルを表示しない。
"1 : 隠しファイルを表示する。
"Values: 0 or 1.
"Default: 0.

"let g:NERDTreeShowHidden=0
let g:NERDTreeShowHidden=1


"NERDTreeIgnore 無視するファイルを設定する
"'\.vim$'ならばfugitive.vimなどのファイル名が表示されない。
"\ エスケープ記号
"$ ファイル名の最後


let g:NERDTreeIgnore=['\.clean$', '\.swp$', '\.bak$', '\~$']
"let g:NERDTreeIgnore=['\.vim$', '\.clean$']
"let g:NERDTreeIgnore=['\.vim$', '\~$']
"let g:NERDTreeIgnore=[]





"Vim詳細設定 ====================================================================================




set tabstop=4                                           "tabを4マス固定
set number                                              "行数表示
syntax on                                               "文法色付け
set clipboard=unnamed,autoselect                        "クリップボードを共有
set cursorline                                          "カーソルにアンダーライン
set laststatus=2                                        "ステータスバー2行固定
set backspace=indent,eol,start                          "バックスペースで動ける
set whichwrap=b,s,h,l,<,>,,[,]                          "
set scrolloff=8                                         "画面スクロールを８行単位
set sidescrolloff=16                                    "
set sidescroll=1                                        "
set confirm                                             "
set hlsearch                                            "
set incsearch                                           "
set ignorecase                                          "
set wrapscan                                            "
set expandtab                                           "
set shiftwidth=4                                        "
set autoindent                                          "自動インデント機能
set smartindent                                         "高性能インデント機能
set history=10000                                       "
set encoding=utf-8                                      "utf8にエンコーディング
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
"set cursorcolumn
"set paste
if exists('&ambiwidth')
	set ambiwidth=double		" UTF-8の□や○でカーソル位置がずれないようにす
endif




"オートコマンド系
"余白削除
autocmd BufWritePre * :%s/\s\+$//e
"自動保存
autocmd CursorHold * update
set updatetime=500





"ショートカットキー
inoremap <C-a> @
inoremap <C-d> $
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
nnoremap j gj
nnoremap k gk


"エスケープ２回で検索ハイライトをリセット
nnoremap <ESC><ESC> :nohlsearch<CR>
nmap <Leader>r <plug>(quickrun)


"perl set =====================================================================

"拡張子でのフォーマット設定
augroup filetypedetect
autocmd! BufNewFile,BufRead *.t setf perl
autocmd! BufNewFile,BufRead *.psgi setf perl
autocmd! BufNewFile,BufRead *.tt setf tt2html
augroup END

"テンプレート設定

autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl-script.txt
autocmd BufNewFile *.t  0r $HOME/.vim/template/perl-test.txt



