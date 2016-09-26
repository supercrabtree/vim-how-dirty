
# scrappy notes

set statusline+=%#DiffStatusPlus#%{GitDiffStatPlus()}
set statusline+=%#DiffStatusMinus#%{GitDiffStatMinus()}
set statusline+=%*

let s:cachedGitDiffStatPlus = '++++++++++++'
function! GitDiffStatPlus()
  if expand('%:f') == '.vimrc'
    return s:cachedGitDiffStatPlus
  else
    return ''
  endif
endfunction

let s:cachedGitDiffStatMinus = '--'
function! GitDiffStatMinus()
  if expand('%:f') == '.vimrc'
    return s:cachedGitDiffStatMinus
  else
    return ''
  endif
endfunction

" DiffStatusLine
hi DiffStatusPlus    guibg=#e8e8e8  guifg=#4ead1f
hi DiffStatusMinus   guibg=#e8e8e8  guifg=#bf2222
