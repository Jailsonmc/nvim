set number
set hidden
set relativenumber
"set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/AppData/Local/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/AppData/Local/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <C-n> :NERDTreeToggle<CR>

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'dikiaap/minimalist'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"PHP
Plug 'tpope/vim-fugitive'

"IDE
Plug 'preservim/nerdtree'


Plug 'honza/vim-snippets'

"Track the engine.
"Plug 'SirVer/ultisnips'
"Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect

"Trigger configuration. Do not use <tab> if you use
"https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"


set t_Co=256
syntax on

colorscheme minimalist
"colorscheme gruvbox

"set background=dark

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

