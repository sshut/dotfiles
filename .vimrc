set number
set title
set ambiwidth=double
set tabstop=4
"set expandtab
set shiftwidth=4
set smartindent
set list
"set listchars=tab:ﾂｻ-,trail:-,eol:竊ｲ,extends:ﾂｻ,precedes:ﾂｫ,nbsp:%
set listchars=tab:ﾂｻ_,trail:-,extends:ﾂｻ,precedes:ﾂｫ,nbsp:%
"タブの色
hi SpecialKey ctermfg=237 guifg=#3a3a3a
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set tags+=tags;
let Tlist_Use_Right_Window = 1                    "右側にtag listのウインドうを表示する
let Tlist_Exit_OnlyWindow = 1                      "taglistのウインドウだけならVimを閉じる
" grでカーソル下のキーワードをvimgrep
" nnoremap <expr> gr ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.c **/*.cpp **/*.h \| cw'
nnoremap <expr> gr ':vimgrep ;\<' . expand('<cword>') . '\>; **/* \| cw'
" 折りたたみ
set foldmethod=syntax
set foldlevel=100 "Don't autofold anything
set foldcolumn=3
" 折りたたみの色をあまり濃くしない
highlight Folded guibg=grey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white
" 検索関連-------------------------------------------------
set hlsearch "検索文字列をハイライトする
set incsearch "インクリメンタルサーチを行う
set ignorecase "大文字と小文字を区別しない
set smartcase "大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan "最後尾まで検索を終えたら次の検索で先頭に移る
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
