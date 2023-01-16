:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" To delete a plugin, remove 'Plug' line
" and then call :PlugClean in Neovim
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround' " Surround word using ysw(
Plug 'vim-airline/vim-airline' " Status bar
Plug 'tpope/vim-commentary' " Comment lines using gcc & gc
Plug 'preservim/nerdtree' " Nerd Tree
Plug 'ap/vim-css-color' " CSS color preview
Plug 'rafi/awesome-vim-colorschemes' " Pack of color schemes
Plug 'ryanoasis/vim-devicons' " Developer icons 
Plug 'tc50cal/vim-terminal' " Vim terminal
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim' " Auto completion

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

" Use <Tab> and <S-Tab> to trigger completion and navigate the completion list
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <S-Tab>
       \ coc#pum#visible() ? coc#pum#prev(1) :
       \ CheckBackspace() ? "\<S-Tab>" :
       \ coc#refresh()

:set completeopt-=preview " Disable previews

:colorscheme alduin
