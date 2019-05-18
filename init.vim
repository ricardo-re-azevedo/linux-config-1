" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'chrishunt/color-schemes', { 'do': 'mkdir colors; cp -r thayer/* colors/; cp -r railscasts/* colors/' }
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'simeji/winresizer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'pseewald/vim-anyfold'
Plug 'ivanov/vim-ipython'
Plug 'blakjak44/nvim'

" Unmanaged
Plug '~/.config/nvim/plugged/YouCompleteMe'

" Initialize plugin system
call plug#end()

set background=dark
colorscheme vimbrant
let python_highlight_all = 1

set nu
set mouse=a
set cursorline
set splitbelow
set splitright
set backspace=indent,eol,start
highlight Normal ctermfg=White
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

set foldlevel=10

" Map the leader key to SPACE
let mapleader="\<SPACE>"

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Use jj as escape key.
inoremap jj <ESC>

" Use leader combinations as quit/write
nnoremap <leader>q :q<ENTER>
nnoremap <leader>Q :q!<ENTER>
nnoremap <leader>w :w<ENTER>
nnoremap <leader>W :w!<ENTER>

" Toggle linenumbers
noremap <leader>m :set nu!<ENTER>

" Insert breakpoint for ipdb debugging.
nnoremap <leader>b i<ENTER> import ipdb; ipdb.set_trace()<ENTER><UP><ESC>0s

" NERDTree mappings
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>E :NERDTreeTabsToggle<CR>
nnoremap <leader>v :vs<ENTER><C-W>l
nnoremap <leader>x :sp<ENTER><C-W>j

" Tab mappings
nnoremap <leader>t gt
nnoremap <leader>r gT
nnoremap <leader>y :tab split<ENTER>

" Tab completion
imap <leader><tab> <C-N>

" Copy and paste to system clipboard
vnoremap <leader>i "*y
noremap <leader>p "*p

" Smooth scroll mapping
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>

" Shift lines down by 1
noremap U O<ESC>

noremap <leader>; $
noremap <leader>n _
nnoremap <leader>s :?
nnoremap <leader>f :%s//g<LEFT><LEFT>
nnoremap <leader>l <C-W>l
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>h <C-W>h

" JSON formatting
com! FormatJSON %!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=2)"
nnoremap <leader>F :FormatJSON<ENTER>:%s/\s\+$//e<ENTER>

" Terminal emulator
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>k <C-\><C-W>k
tnoremap <leader>j <C-\><C-W>
nnoremap <C-t> :split<ENTER>:term ipython --pylab<ENTER>:resize 10<ENTER>i

" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
let g:airline_theme = 'badwolf'
let NERDTreeShowHidden=1

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
"set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Highlight python operators
autocmd Filetype python syn match pythonExtraOperator     "\%([~!^&|*/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\*\*\|\.\.\.\|\.\.\|::\|=\)"

autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab autoindent
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab autoindent
autocmd Filetype handlebars setlocal ts=2 sts=2 sw=2 expandtab autoindent
autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab autoindent
