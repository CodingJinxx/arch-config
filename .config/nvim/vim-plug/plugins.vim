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
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " OneDark
    Plug 'joshdick/onedark.vim'
    " (Optional) Multi-entry selection UI.
    Plug 'junegunn/fzf'
    " COC Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " ALE
    Plug 'dense-analysis/ale'
call plug#end()
