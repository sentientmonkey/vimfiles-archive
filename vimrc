set nocompatible
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

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
"if has("gui_macvim")
"  set transp=8
"end

" 'follow' mode
nmap <silent> <Leader>ef	:vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr>:set scb<cr>

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

" show real tabs (so we can destroy them!
set list
set listchars:tab:->

if has("gui_macvim")
  set guifont=Monaco:h12
end

" ack for ubuntu/linux only
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

let g:rails_ctags_arguments="--exclude='*.*.js' `bundle --verbose list | grep gemspec | cut -d' ' -f5 | sed 's/specifications/gems/' | sed 's/\.gemspec//'`"
" set statusline=%f[%{GitBranch()}]%#StatusLine#
 set statusline=%f%{fugitive#statusline()}%#StatusLine#

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

"map tab up/down keys for mvim
nmap <D-Right> :tabNext<cr>
nmap <D-Left> :tabprevious<cr>

if has("gui_running")
  winsize 180 48
  winpos 100 50
  set showtabline=2
end
