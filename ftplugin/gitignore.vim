" Author: Hanley Lee
" Website: https://www.hanleylee.com
" GitHub: https://github.com/HanleyLee
" License:  MIT License

if exists('b:loaded_ftplugin')
    finish
endif
let b:loaded_ftplugin = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

setlocal commentstring=#\ %s

let b:undo_ftplugin = get(b:, 'undo_ftplugin', '')
if !empty(b:undo_ftplugin)
    let b:undo_ftplugin .= ' | '
endif

let &cpoptions = s:save_cpo
unlet s:save_cpo
