"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝

"---------------------------------vim config---------------------------- 
syntax on
set number 
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set termguicolors
"Get out of insert mode 
"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>
imap cll console.log()<Esc><S-f>(a
"imap clg 'console.log()
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

set conceallevel=0
let g:yast_host_keyword=1

"-------------------------------Sources-------------------------------
"Windows sources
"source ~/AppData/Local/nvim/plugins/plugins.vim
"source ~/AppData/Local/nvim/plugins/plug-config.vim
source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/plugins/plug-config.vim
source ~/.config/nvim/plugins/rnvimr.vim 
"source ~/.config/nvim/plugins/nvim-cmp.vim
"--------------------------------Plugins Config--------------------------------------------
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

"abrir Nerdtree
"open nerdtree
nmap <Leader>e :NERDTree<CR>

"open cocExplorer 
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>

"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>

"Tmux navigation
nmap <Leader>h :TmuxNavigateLeft<CR>
nmap <Leader>l :TmuxNavigateRight<CR>
nmap <Leader>j :TmuxNavigateDown<CR>
nmap <Leader>k :TmuxNavigateUp<CR>

set cmdheight=1
colorscheme dracula 

"Close tags automatically
"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js'

"Custom commands--------------------------------------------------
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"command! -nargs=0 play :

"Extesion commands------------------------------------------------
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
"-----------------------------------------------------------------

