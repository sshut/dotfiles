set nocompatible		"viと互換性をとらない

"プラグインマネージャーVundle設定*******************************************************
" ファイル形式の検出を無効
filetype off

" Vundle を初期化
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle もここに記載
Plugin 'gmarik/vundle'

"インストール、更新/削除コマンド
	"vim上で
	":VundleInstall
	":VundleClean
" 以下にプラグインを追加していく
"Plugin 'majutsushi/tagbar'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler'
Plugin 'vim-scripts/gtags.vim'
"Plugin 'vim-scripts/taglist.vim'

" ファイルタイプ、プラグイン、インデントを ON
filetype plugin indent on 

"vimfiler用のカスタム-----------------
let g:vimfiler_as_default_explorer=1	"vimfilerをデフォルトにする。:e .でvimfilerが開く
 "Ctrl f i でIDE風にvimfilerを開く
noremap <C-F><C-I> :VimFiler -split -simple -winwidth=30 -no-quit<ENTER>

"その他のカスタム設定を以下に書く******************************************************
"標準的な設定-----------------------------------------------
set number				"行番号を表示
set title				"ターミナルのタイトルをセット
set ambiwidth=double	"全角文字の幅を2に固定
set tabstop=4			"タブ幅をスペース4つ分に固定
"set expandtab			"タブキーでスペースが挿入される
set shiftwidth=4		"vimが自動生成するタブ幅をスペース4つ分にする
set smartindent			"自動インデント
"set nobackup			"bバックアップをとらない
set nowrap				"画面端で折り返さない
set belloff=all			"ビープ音を消す"

"色関連の設定--------------------------------------------
 "コメントを濃い緑にする colorschemeの前に設定する必要あり
   "ctermfg:ターミナルの色
   "guifg:GUI版Vimの前景色
autocmd ColorScheme * highlight Comment ctermfg=34 guifg=#008800 
autocmd ColorScheme * highlight StatusLine ctermfg=234 ctermbg=black guifg=#008800 


"タブ、空白、改行の可視化--------------
set list				"空白文字の可視化
set listchars=tab:>\ "二文字目を消すにはバックスラッシュのあとにコメントが必須
"タブの色
"autocmd ColorScheme * highlight SpecialKey ctermfg=238 guifg=#008800


" カレント行ハイライトON
"set cursorline
" アンダーラインを引く(color terminal)
autocmd ColorScheme * highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"autocmd ColorScheme * highlight SpecialKey ctermfg=238 guifg=#008800

"カラースキーマの指定
colorscheme molokai
"colorscheme moonshine


"ステータスバー関連----------------------------------------
set statusline=%F				" ファイル名表示
set statusline+=%m				" 変更チェック表示
set statusline+=%r				" 読み込み専用かどうか表示
set statusline+=%h				" ヘルプページなら[HELP]と表示
set statusline+=%w				" プレビューウインドウなら[Prevew]と表示
set statusline+=%=				" これ以降は右寄せ表示
set statusline+=[ENC=%{&fileencoding}]	" file encoding
set statusline+=[LOW=%l/%L		" 現在行数/全行数
set statusline+=(%P)]			" 全行数に対する割合 
set laststatus=2				" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)

"-----------------------------------------------------------
set nrformats-=octal			"0で始まる数字を8進数で扱わない
set hidden						"ファイルの保存をしていなくても、べつのファイルを開けるようにする
set history=50			
set virtualedit=block			"文字のないところにカーソル移動できるようにする
set whichwrap=b,s,[,],<,>		"カーソルの回り込みができるようになる
set backspace=indent,eol,start	"バックスペースを、空白、行末、行頭でも使えるようにする
set wildmenu
set wildignorecase				"ファイル名のタブ保管時に大文字小文字を区別しない wildmenuとセット
"set wildmode=longest,full		"ファイル名のタブ補完 wildmenuとセット
set wildmode=list:longest		"ファイル名のタブ補完 wildmenuとセット
set encoding=utf-8				"vimの内部文字コード
"set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8	"読み込み時の文字コード 左から試す
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp	"読み込み時の文字コード 左から試す
"set tags+=tags					"(ctags用のため、gtagsでは必要ない)tagファイルを親ディレクトリへ探しに行く

"Taglistプラグインの設定
"let Tlist_Auto_Open = 1			"ファイルを開いたときにtaglistを開く
let Tlist_Use_Right_Window = 1	"右側にtag listのウインドうを表示する
let Tlist_Exit_OnlyWindow = 1	"taglistのウインドウだけならVimを閉じる
"let tlist_cpp_settings = 'c++;c:class;f:function'

" grでカーソル下のキーワードをvimgrep------------------------
" nnoremap <expr> gr ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.c **/*.cpp **/*.h \| cw'
nnoremap <expr> gr ':vimgrep ;\<' . expand('<cword>') . '\>; **/* \| cw'

" 折りたたみ zaで折りたためる----------------------------------------------
set foldmethod=syntax
set foldlevel=100				"全ての折りたたみを開いた状態でファイルを開く
"set foldcolumn=5				"指定段数分の段落を左に表示
" 折りたたみの色をあまり濃くしない
highlight Folded guibg=grey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white

"検索関連-------------------------------------------------
set hlsearch	"検索文字列をハイライトする
set incsearch	"インクリメンタルサーチを行う
set ignorecase	"大文字と小文字を区別しない
set smartcase	"大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
"set wrapscan	"最後尾まで検索を終えたら次の検索で先頭に移る
set nowrapscan	"最後尾まで検索を終えたら次の検索で先頭に移らない
"エスケープ2回でハイライトを消す
nnoremap <ESC><ESC> :nohl<CR> 
"検索関連終了----------------------------------------------

"画面分割, タブページの操作方法変更-------------------------
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
"以下はsubmodeが必要
"call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
"call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
"call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
"call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
"call submode#map('bufmove', 'n', '', '>', '<C-w>>')
"call submode#map('bufmove', 'n', '', '<', '<C-w><')
"call submode#map('bufmove', 'n', '', '+', '<C-w>+')
"call submode#map('bufmove', 'n', '', '-', '<C-w>-')
"gtags用------------------------------
"map <C-h> :Gtags -f %<CR> "この設定を有効にするとバックスペースもGtags -f になってしまう
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-g> :Gtags

"taglist用---------------------------
"\tでtaglistを開く
nnoremap <silent> <leader>t :TlistOpen<CR>

"vimgreq時にQuickfixWindowを自動で開く
autocmd QuickFixCmdPost *grep* cwindow

