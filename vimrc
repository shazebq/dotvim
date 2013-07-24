call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on

"open nerdtree by default
autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

"number lines
set number

"maps option + command and arrow key for switching tabs to match the browser
"shortcut (don't really use this one though
map <D-A-Right> :tabn<CR>
map <D-A-Left>  :tabp<CR>

"sets the font size
set guifont=Menlo\ Regular:h13

"text in long lines doesn't wrap i.e. go to the next line
set nowrap

"tells VIM the current directory is what it is in nerdtree
let g:NERDTreeChDirMode=2

"execute the currently open file
map <D-r> :! ruby %<CR>

"make a dollar sign appear up to where the change will take place
"set cpoptions+=$

set smartindent 
set tabstop=4 
set shiftwidth=4 
set expandtab


"make tab default to 2 spaces for ruby files
au FileType ruby setl sw=2 sts=2 et
