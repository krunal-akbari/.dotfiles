" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

"commnerer
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" bulleting
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
let g:bullets_enable_in_empty_buffers = 0

let g:netrw_banner = 0

"limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

lua <<Eof
-- makking plugins
RELOAD = function(...)
    return require("plenary.reload").reload_module(...)
end

R = function(v)
    RELOAD(v)
    return require(v)
end
P = function(v)
    print(vim.inspect(v))
    return v
end
Eof
