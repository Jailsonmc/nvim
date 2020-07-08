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
" Change dates fast
Plug 'tpope/vim-speeddating'

" Convert binary, hex, etc..
Plug 'glts/vim-radical'

" Files
Plug 'tpope/vim-eunuch'

" Repeat stuff
Plug 'tpope/vim-repeat'

" Surround
Plug 'tpope/vim-surround'

" Better Comments
Plug 'tpope/vim-commentary'
" Plug 'preservim/nerdcommenter'

" Have the file system follow you around
Plug 'airblade/vim-rooter'

" auto set indent settings
Plug 'tpope/vim-sleuth'

" Text Navigation
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
" Plug 'easymotion/vim-easymotion'

" Add some color
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Cool Icons
Plug 'ryanoasis/vim-devicons'

" Auto pairs for '(' '[' '{' 
Plug 'jiangmiao/auto-pairs'

" Closetags
Plug 'alvan/vim-closetag'

" Themes
Plug 'christianchiarulli/onedark.vim'
" Plug 'kaicataldo/material.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'tomasiser/vim-code-dark'
Plug 'arzg/vim-colors-xcode'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status Line
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Ranger
" Plug 'francoiscabrol/ranger.vim'
" Plug 'rbgrouleff/bclose.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Terminal
Plug 'voldikss/vim-floaterm'

" Start Screen
Plug 'mhinz/vim-startify'

" Vista
Plug 'liuchengxu/vista.vim'

" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'

" Zen mode
Plug 'junegunn/goyo.vim'

" Making stuff
Plug 'neomake/neomake'

" Snippets
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Better Comments
" Plug 'jbgutierrez/vim-better-comments'
" Echo doc
" Plug 'Shougo/echodoc.vim'
" Interactive code
Plug 'ChristianChiarulli/codi.vim'

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

colorscheme xcodedark	
"colorscheme minimalist
"colorscheme gruvbox

"set background=dark

set guifont=SF\ Mono:h11 
"set guifontwide=MingLiU:h10 "For windows to display mixed character sets
set encoding=utf-8

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

augroup vim-colors-xcode
    autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic
