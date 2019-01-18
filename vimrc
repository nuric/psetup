execute pathogen#infect()

syntax on
filetype plugin indent on

" Syntastic suggested settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 4

"let g:syntastic_python_pylint_exe = 'pylint3'
let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_checkers = ['python']
autocmd VimEnter * SyntasticToggleMode

" NERDTree settings
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['__pycache__']
let g:NERDTreeWinSize=21

" NERD Commenter key bindings
nmap <C-k> :call NERDComment('n', 'toggle')<CR>
vmap <C-k> :call NERDComment('v', 'toggle')<CR>

" Gitgutter settings
set updatetime=500

" Pydocstring key bindings
nmap <silent> <C-J> <Plug>(pydocstring)

" Jedivim settings
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#show_call_signatures = "2"

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
"autocmd BufWritePost,FileWritePost *.tex silent execute "!pdflatex %" | redraw!

"abbreviations
ab abfor for(int i=0; i<n; ++i) {

"f key mappings
map <F3> :set spell spelllang=en_gb<CR>
map <F4> :set nospell<CR>
map <F5> :!python3 %<CR>
map <F9> :!pdflatex % && evince %<.pdf<CR>

" Custom file types
au BufRead,BufNewFile *.mq5 setfiletype cpp
au BufRead,BufNewFile *.mqh setfiletype cpp
