set nocompatible
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let g:molokai_original=1
colorscheme molokai
"colorscheme fruity
"set bg=dark 
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"colorscheme solarized
syntax on
" set smartindent

" transparency effect for macvim
if has("gui_macvim")
  set transp=8
end


" Load matchit (% to bounce from do to end, etc.)
" runtime! macros/matchit.vim
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set wildmenu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set noeb
set guifont=Monaco\ 10
set laststatus=2
set number

" ack for ubuntu/linux only
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

let g:rails_ctags_arguments='--exclude="*.*.js" /usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.10 /usr/local/lib/ruby/gems/1.8/gems/activesupport-2.3.10 /usr/local/lib/ruby/gems/1.8/gems/activeresource-2.3.10 /usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.10 /usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.10 /usr/local/lib/ruby/gems/1.8/gems/rails-2.3.10'
set statusline=%f[%{GitBranch()}]%#StatusLine#

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

if has("gui_running")
  winsize 180 48
  winpos 100 50
end
