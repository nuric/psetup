execute pathogen#infect()

syntax on
filetype plugin indent on

"Syntastic suggested settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_checkers = ['python']

"Custom settings
set nu
set showcmd
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set softtabstop=2
"set foldmethod=syntax

"autocommands
autocmd BufNewFile,BufReadPost *.frag,*.vert set syntax=c
autocmd BufWritePost,FileWritePost *.tex silent execute "!pdflatex %" | redraw!

"abbreviations
ab abfor for(int i=0; i<n; ++i) {

"f key mappings
map <F3> :set spell spelllang=en_gb<CR>
map <F4> :set nospell<CR>
map <F5> :!python %<CR>
map <F8> :!make micaz sim && python runsim.py<CR>
map <F9> :!pdflatex % && evince %<.pdf<CR>

