" Author: Hanley Lee
" Website: https://www.hanleylee.com
" GitHub: https://github.com/HanleyLee
" License:  MIT License

" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
    finish
endif
let b:current_syntax = 'gitignore'

let s:save_cpo = &cpoptions
set cpoptions&vim

syn keyword	gitignoreTodo	contained TODO FIXME XXX
syn match gitignoreFile "^\(#\)\@!.*\(/\)\@<!$"
syn match gitignoreDirectory "^\(#\)\@!.*\/$"
syn match negatePattern "\v!.*$"
" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
syn match gitignoreComment "^#.*" contains=gitignoreTodo
syn match gitignoreComment "\s#.*"ms=s+1 contains=gitignoreTodo
syn match gitignoreComment "\v#.*$" contains=@Spell

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link gitignoreTodo Todo
hi def link gitignoreDirectory Constant
hi def link gitignoreFile Type
hi def link negatePattern Statement
hi def link gitignoreComment Comment

let &cpoptions = s:save_cpo
unlet s:save_cpo
