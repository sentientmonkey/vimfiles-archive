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
"if has("gui_macvim")
"  set transp=8
"end

" set leader
let mapleader = ","
let maplocalleader = ","


" 'follow' mode
"nmap <silent> <Leader>ef	:vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr>:set scb<cr>

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
autocmd FileType html :setlocal sw=2 ts=2 sts=2
set smarttab
set expandtab
set noeb
set guifont=Monaco\ 10
set laststatus=2
set number

" show real tabs and trailing whitespace (so we can destroy them!)
set list
set listchars:tab:»·,trail:·

match Error /\s\+$/

if has("gui_macvim")
  set guifont=Monaco:h12
end

" ack for ubuntu/linux only
let g:ackprg="ack -H --nocolor --nogroup --column"

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

"map shift-t to command-t
map <S-t> :CommandT<cr>

" map <leader>t to run tests
autocmd FileType ruby :map <leader>t :w\|:!rspec --color %<cr>

" map <leader>m for make
map <leader>m :w\|:Make<cr>

" map <leader>r to run in repl
map <leader>r :w\|:silent !cat % > repl-command<cr>:redraw!<cr>
vmap <leader>r :w !cat > repl-command<cr>:redraw!<cr>
map <leader>l :silent.w !cat > repl-command<cr>:redraw!<cr>

" flog settings
let g:flog_enable=0
map <leader>f :call ToggleFlog()<cr>
let g:flog_low_color_hl        = "term=standout ctermfg=118 ctermbg=235 guifg=#999999 guibg=#323232"
let g:flog_medium_color_hl     = "term=standout ctermfg=81 ctermbg=235 guifg=#66D9EF guibg=#323232"
let g:flog_high_color_hl       = "term=standout cterm=bold ctermfg=199 ctermbg=16 gui=bold guifg=#F92672 guibg=#232526"
" let g:flog_high_limit=20

" toggle hlsearch with enter
" noremap <cr> :set hlsearch!<cr>

if has("gui_running")
  winsize 180 48
  winpos 100 50
  set showtabline=2
end

set completefunc=syntaxcomplete#Complete

" edit/reload vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

map <leader>c :call ToggleCoverage()<cr>

" lispy things
let g:ScreenImpl='Tmux'

function! s:ScreenShellListener()
  if g:ScreenShellActive
    nmap <C-c><C-c> :ScreenSend<cr>
    nmap <C-c><C-x> :ScreenQuit<cr>
  else
    nmap <C-c><C-c> :ScreenShell<cr>
  endif
endfunction

nmap <C-c><C-c> :ScreenShell<cr>
augroup ScreenShellEnter
  autocmd User * call <SID>ScreenShellListener()
augroup END
augroup ScreenShellExit
  autocmd User * call <SID>ScreenShellListener()
augroup END

nmap <C-C><C-F> v<Plug>(sexp_outer_top_list):ScreenSend<CR>
nmap <C-C><C-E> :.:ScreenSend<CR>

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]


