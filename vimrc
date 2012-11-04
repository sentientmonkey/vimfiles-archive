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
set tabstop=4
set shiftwidth=4
set softtabstop=4
autocmd FileType ruby :setlocal sw=2 ts=2 sts=2
autocmd FileType javascript :setlocal sw=2 ts=2 sts=2
set smarttab
set expandtab
set noeb
set guifont=Monaco\ 10
set laststatus=2
set number

" show real tabs and trailing whitespace (so we can destroy them!)
set list
set listchars:tab:->,trail:·
match Error /\s\+$/

if has("gui_macvim")
  set guifont=Monaco:h12
end

" ack for ubuntu/linux only
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" let g:rails_ctags_arguments="--exclude='*.*.js' `bundle --verbose list | grep gemspec | cut -d' ' -f5 | sed 's/specifications/gems/' | sed 's/\.gemspec//'`"
let g:rails_ctags_arguments="--exclude='*.*.js'"

" set statusline=%f[%{GitBranch()}]%#StatusLine#
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}\ %#StatusLine#%=%-14.(%l,%c%V%)\ %P

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

"map ctl-t to command-t
"map <C-t> :CommandT<cr>

" map ,t to run tests with color
map ,t :w\|:!rspec --color %<cr>

" toggle hlsearch with enter
noremap <cr> :set hlsearch!<cr>

if has("gui_running")
  winsize 180 48
  winpos 100 50
  set showtabline=2
end
