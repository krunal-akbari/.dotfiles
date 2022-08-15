#!/usr/bin/bash
servers=("sumneko-lua" "json" "prettier" "sh" "snippets" "html" "pyright")
for str in ${servers[@]}; do
  install+=" coc-"$str
done
nvim -c "CocInstall $install"


