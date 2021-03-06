let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Die early if this Vim install is built with tiny or small.
" We don't want a Raspberry Pi, for example, running all of these.
if !1 | finish | endif

" Initialise vim-plug
call plug#begin()

" Load plugin list for vim-plug to manage.
execute 'source' Dot('plugins.vim')

" Lock in the plugin list.
call plug#end()

" Load all plugin configuration files.
for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
  exec 'source' file
endfor

