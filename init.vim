set number
set ignorecase
set autoindent
set undofile
set swapfile
set shiftwidth=4 softtabstop=4 expandtab
set nu

filetype plugin indent on

map <F5> i{<ESC>ea}<ESC> 
map \p i(<ESC>ea)<ESC>
map \c i{<ESC>ea}<ESC>
map \b i[<ESC>ea]<ESC>

syntax enable

map \f i"<ESC>ea"<ESC>
map \d i"<ESC>$"<ESC>
map <F7> gg=G <C-o><C-o>

" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

autocmd TextChanged *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
"InsertLeave  




call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vim/plugged')

" file and directory serach plugin
Plug 'kien/ctrlp.vim'
" Html css plugin
Plug 'mattn/emmet-vim'
" theme
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'altercation/vim-colors-solarized'

" python indentation plugin
Plug 'vim-scripts/indentpython.vim'

" neovim formater
"Plug 'sbdchd/neoformat'

" copilot.vim
Plug 'github/copilot.vim'

" prettier plugin
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" autocomplete plugin
" Plug 'Valloric/YouCompleteMe'

" sytax view plugin
"Plug 'vim-syntastic/syntastic'
"Plug 'nvie/vim-flake8'
"Plug 'jnurmine/Zenburn'

" expand directory plugin
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" git help plugin
Plug 'tpope/vim-fugitive'
Plug 'rktjmp/lush.nvim'

" information plugin
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_hightlight_all=1
syntax on
set background=dark
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"    let g:tokyonight_style = "night"
"    let g:tokyonight_italic_functions = 1
"    let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
"
"    let g:tokyonight_colors = {
"      \ 'hint': 'orange',
"      \ 'error': '#ff0000'
"      \ }

" colorscheme tokyonight
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'default'

