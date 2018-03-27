"標準的な設定-----------------------------------------------
set number				"行番号を表示
set title				"ターミナルのタイトルをセット
set ambiwidth=double	"全角文字の幅を2に固定
set tabstop=4			"タブ幅をスペース4つ分に固定
"set expandtab			"タブキーでスペースが挿入される
set shiftwidth=4		"vimが自動生成するタブ幅をスペース4つ分にする
set smartindent			"自動インデント
set nobackup			"bバックアップをとらない

"カラースキーマ--------------------------------------------
colorscheme molokai

"タブ、空白、改行の可視化-----------------------------------
set list				"空白文字の可視化
set listchars=tab:ﾂｻ_,trail:-,extends:ﾂｻ,precedes:ﾂｫ,nbsp:% "空白文字の表示形式
"タブの色
"hi SpecialKey ctermfg=237 guifg=#3a3a3a

"-----------------------------------------------------------
set nrformats-=octal			"0で始まる数字を8進数で扱わない
set hidden						"ファイルの保存をしていなくても、べつのファイルを開けるようにする
set history=50			
set virtualedit=block			"文字のないところにカーソル移動できるようにする
set whichwrap=b,s,[,],<,>		"カーソルの回り込みができるようになる
set backspace=indent,eol,start	"バックスペースを、空白、行末、行頭でも使えるようにする
set wildmenu
set wildmode=longest,full		"ファイル名のタブ補完 wildmenuとセット
set encoding=utf-8				"vimの内部文字コード
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8	"読み込み時の文字コード 左から試す
set tags+=tags					"tagファイルを親ディレクトリへ探しに行く
let Tlist_Use_Right_Window = 1                    "右側にtag listのウインドうを表示する
let Tlist_Exit_OnlyWindow = 1                      "taglistのウインドウだけならVimを閉じる

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

" 検索関連-------------------------------------------------
set hlsearch	"検索文字列をハイライトする
set incsearch	"インクリメンタルサーチを行う
set ignorecase	"大文字と小文字を区別しない
set smartcase	"大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan	"最後尾まで検索を終えたら次の検索で先頭に移る
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
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-g> :Gtags


