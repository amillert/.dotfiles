" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'arcticicestudio/nord-vim'
    Plug 'ayu-theme/ayu-vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    Plug 'voldikss/vim-floaterm'

    Plug 'mhinz/vim-startify'

    " LSP
    Plug 'neovim/nvim-lspconfig'

    " metals lsp
    Plug 'scalameta/nvim-metals'

    Plug 'nvim-lua/completion-nvim'

    " Plug 'liuchengxu/vim-which-key'

    Plug 'wakatime/vim-wakatime'

    call plug#end()
