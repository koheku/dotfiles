"Indent
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"Clipboard
set clipboard=unnamed

" Plugins with vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
" Group dependencies, vim-session depends on vim-misc
Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

" Load vim files in ./settings folder
let vimsettings = '~/.config/nvim/settings'
for fpath in split(globpath(vimsettings, '*.vim'), '\n')
  exe 'so' fpath
endfor
