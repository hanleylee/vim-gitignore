" Author: Hanley Lee
" Website: https://www.hanleylee.com
" GitHub: https://github.com/HanleyLee
" License:  MIT License

augroup GitIgnore
    autocmd!
    autocmd BufNewFile,BufRead .gitignore setf gitignore
    autocmd BufNewFile,BufRead */info/exclude setfiletype gitignore
augroup END
