autocmd VimEnter,WinEnter * let &scrolloff = winheight(0) / 3
syntax on
" nnoremap <space> :nohlsearch<CR>

nnoremap <esc> :noh<return><esc>

nnoremap j gj
nnoremap k gk

" regex change after *
nnoremap <M-r> :%s///g<Left><Left>

set nocompatible
" set wildmenu
set path+=**

map <C-p> :Files<CR>
" map , :Rg<CR>
map <space> b :Buffers<CR>
map <space> g :GFiles<CR>

nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
" mine above

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
" nnoremap <C-s> :w<CR>
" Alternate way to quit
" nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
" nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing (till done with tabbing)
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Telescope
nnoremap <space>f :Telescope find_files<CR>
nnoremap <space>g :Telescope live_grep<CR>
nnoremap <space>b :Telescope buffers<CR>
nnoremap <space>t :Telescope help_tags<CR>
