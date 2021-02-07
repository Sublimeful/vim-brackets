let g:vim_brackets_pairs = {'{': '}', '[': ']'}

function! s:GetCharAhead()
    if col('$') == col('.')
        return "\0"
    endif
    return strpart(getline('.'), col('.') - 1, 1)
endfunction

function! s:GetCharBehind()
    if col('.') == 1
        return "\0"
    endif
    return strpart(getline('.'), col('.') - 2, 1)
endfunction

function! s:CheckPairs(leftPair)
    return has_key(g:vim_brackets_pairs, a:leftPair) && g:vim_brackets_pairs[a:leftPair] == s:GetCharAhead()
endfunction

function! s:Enter()
    if s:CheckPairs(s:GetCharBehind())
        return "\<CR>\<CR>\<Up>\<Tab>"
    endif
    return "\<CR>"
endfunction

inoremap <buffer> <silent> <CR>         <C-R>=<SID>Enter()<CR>



