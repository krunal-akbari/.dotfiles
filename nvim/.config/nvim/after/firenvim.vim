function! OnUIEnter(event) abort
  if 'Firenvim' ==# get(get(nvim_get_chan_info(a:event.chan), 'client', {}), 'name', '')
    set laststatus=0
  endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))

if exists('g:started_by_firenvim')
  set laststatus=0
endif
