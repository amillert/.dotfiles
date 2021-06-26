" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'voldikss/vim-floaterm'

    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'

    Plug 'arcticicestudio/nord-vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'airblade/vim-rooter'

    Plug 'mhinz/vim-startify'
    " Plug 'scalameta/nvim-metals'

    " Plug 'neovim/nvim-lspconfig'
    " Plug 'glepnir/lspsaga.nvim'
    " Plug 'folke/lsp-colors.nvim'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'hrsh7th/nvim-compe'
    Plug 'kevinhwang91/nvim-bqf'

    Plug 'wakatime/vim-wakatime'

call plug#end()
