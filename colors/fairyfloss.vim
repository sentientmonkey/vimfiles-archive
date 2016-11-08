" Vim color file
" Maintainer:   Your name <youremail@something.com>
" Last Change:  
" URL:		

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="fairyfloss"

hi Normal       guifg=#F8F8F2 guibg=#5A5475

" OR

" highlight clear Normal
" set background&
" highlight clear
" if &background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	
" Uncomment and complete the commands you want to change from the default.

"hi Cursor		
"hi CursorIM	
"hi Directory	
"hi DiffAdd		
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi ErrorMsg	
"hi VertSplit	
"hi Folded		
"hi FoldColumn	
"hi IncSearch	
hi LineNr       guifg=Grey
"hi ModeMsg		
"hi MoreMsg		
hi NonText      guifg=Grey
"hi Question	
"hi Search		
"hi SpecialKey	
"hi StatusLine	
"hi StatusLineNC	
hi Title        guifg=#FFB8D1
hi Visual       guifg=Black
"hi VisualNOS	
"hi WarningMsg	
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment     guifg=#E6C000
hi Constant     guifg=#C5A3FF
"hi Identifier	
hi Statement    guifg=#FFB8D1
hi PreProc      guifg=#FFB8D1
hi Type         guifg=#C2FFDF
"hi Special	
"hi Underlined	
"hi Ignore		
"hi Error		
"hi Todo		

" other
hi Label        guifg=#3E3D32
hi Function     guifg=#FFF352
hi Keyword      guifg=#FFB8D1
hi Number       guifg=#C5A3FF
hi String       guifg=#FFEA00
hi Operator     guifg=#FFB8D1

if &t_Co > 255
    hi Normal       ctermbg=60
    hi LineNr       ctermfg=7
    hi NonText      ctermfg=7
    hi Visual       guifg=Black

    " syntax highlighting groups
    hi Comment     guifg=#E6C000
    hi Constant     guifg=#C5A3FF
    "hi Identifier	
    hi Statement    guifg=#FFB8D1
    hi PreProc      guifg=#FFB8D1
    hi Type         guifg=#C2FFDF
    "hi Special	
    "hi Underlined	
    "hi Ignore		
    "hi Error		
    "hi Todo		

    " other
    hi Label        guifg=#3E3D32
    hi Function     guifg=#FFF352
    hi Keyword      guifg=#FFB8D1
    hi Number       guifg=#C5A3FF
    hi String       guifg=#FFEA00
    hi Operator     guifg=#FFB8D1
end
