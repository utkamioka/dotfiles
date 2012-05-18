set enc=utf-8
set fenc=utf-8

syntax on
filetype plugin indent on
set showmatch
set autoindent
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent

autocmd FileType c      set cindent
autocmd FileType cpp    set cindent
autocmd FileType perl   set cindent
autocmd FileType java   set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType ruby   set tabstop=2 shiftwidth=2 expandtab
autocmd FileType xml    set tabstop=2 shiftwidth=2 expandtab
autocmd FileType html   set tabstop=2 shiftwidth=2 expandtab

helptags ~/.vim/doc

" Zen-coding(:help zen)
" https://github.com/mattn/zencoding-vim
let g:user_zen_settings = { 'indentation':'  ', 'lang':'ja' }
