set number
set hidden
set relativenumber
"set mouse=a
set inccommand=split
" Complete files like a shell
set wildmode=list:longest
" SEARCH
" Vim will start searching as you type
set incsearch

" Aumemta a velocidade e desempenho
set ttyfast

" AUTORELOAD
" Automatically reload buffers when file changes
set autoread

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/AppData/Local/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/AppData/Local/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ack<space>

" NERDTree
"nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>ft :NERDTreeToggle<cr>
set ts=4
set cul
syn match ipaddr   /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)/
 hi link ipaddr Identifier
 imap ><Tab> ><Esc>mt?<\w<Cr>:let @/=""<Cr>lyiw`ta</><Esc>P`tli

"nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
nnoremap <c-g> <c-]> 
nnoremap <c-i> :tabnew %<CR>g<C-]>
"nnoremap <c-y> <Esc>:tabnew %<CR>g<C-]>

"nmap <silent> <M-Down> :call ScrollOtherWindow("down")<CR>
"nmap <silent> <M-Up> :call ScrollOtherWindow("up")<CR>

" Set automatic expansion of parenthesis/brackets
inoremap ( ()<esc>:call BC_AddChar(")")<cr>i
inoremap { {}<esc>:call BC_AddChar("}")<cr>i
inoremap [ []<esc>:call BC_AddChar("]")<cr>i

" mapeia CTRL+j para pular fora de parênteses colchetes etc...
inoremap <C-j> <esc>:call search(BC_GetChar(), "W")<cr>a
" Function for the above
function! BC_AddChar(schar)
   if exists("b:robstack")
       let b:robstack = b:robstack . a:schar
   else
       let b:robstack = a:schar
   endif
endfunction
function! BC_GetChar()
   let l:char = b:robstack[strlen(b:robstack)-1]
   let b:robstack = strpart(b:robstack, 0, strlen(b:robstack)-1)
   return l:char
endfunction


call plug#begin()

" Essentials 
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'bfredl/nvim-miniyank'
Plug 'moll/vim-bbye'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'ludovicchabant/vim-gutentags'

" Project Management
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'

" Syntax 
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" Autocompletion
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor'
Plug 'phpactor/ncm2-phpactor'

" Searching / Replacing
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'wincent/ferret'

" Code Quality
Plug 'neomake/neomake'

" Refactoring
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'phpactor/phpactor'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ctags
Plug 'craigemery/vim-autotag'

" Git
Plug 'mhinz/vim-signify'
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
"Plug 'junegunn/gv.vim'

" Snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" Outline
Plug 'majutsushi/tagbar'

" Debugger
"Plug 'joonty/vdebug'

" PHPDoc
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'

"PHP
"Plug 'tpope/vim-fugitive'
"Plug 'StanAngeloff/php.vim'
"Plug 'stephpy/vim-php-cs-fixer'
"Plug 'ncm2/ncm2'
"Plug 'phpactor/phpactor'
"Plug 'phpactor/ncm2-phpactor'

" Themes
Plug 'christianchiarulli/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'arzg/vim-colors-xcode'

call plug#end()

" Abre a REPL.automaticamente
function! Repl()
    :w
    if &filetype == "javascript"
        :exec "terminal node"
    elseif &filetype == "python"
        :exec "terminal python3"
    elseif &filetype == "php"
        :exec "terminal php -a"
    elseif &filetype == "sh"
        :exec "terminal"
    endif
endfunction
noremap <C-a> :call Repl() <CR>

set t_Co=256
syntax on

colorscheme xcodedark	
"colorscheme minimalist
"colorscheme gruvbox

"set background=dark
"colorscheme vim-material

"set background=dark

"set guifont=SF\ Mono:h11 
"set guifontwide=MingLiU:h10 "For windows to display mixed character sets
set encoding=utf-8

"let g:airline_theme='minimalist'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

augroup vim-colors-xcode
    autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic


