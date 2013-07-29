" markdown filetype file

if exists("did\_load\_filetypes")

 finish

endif

augroup markdown

 au! BufRead,BufNewFile *.mkd   setfiletype mkd

augroup END

au! BufRead,BufNewFile *.json setfiletype json

au BufRead,BufNewFile /etc/nginx/* set ft=nginx

autocmd BufRead,BufNewFile *.log set syntax=log4j
autocmd BufRead,BufNewFile application.log.* set syntax=log4j
