set enc=utf-8
set fenc=utf-8

helptags ~/.vim/doc

syntax on

filetype on
autocmd FileType c,cpp,perl set cindent
autocmd FileType java set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType ruby set tabstop=2 shiftwidth=2 expandtab
autocmd FileType xml set tabstop=2 shiftwidth=2 expandtab
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab
set autoindent
set shiftwidth=4

" Zen-coding(:help zen)
let g:user_zen_settings = { 'indentation':'  ' }
let g:user_zen_settings = { 'lang':'ja' }
