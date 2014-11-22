Vim
===
__[Vim]__ is a modal text editor and my text editor of choice. __[NeoVim]__ is
an alternative to watch.


Structure
---------
The configuration directory for __Vim__ has a specific structure. In general,
any file with extension `.vim` may be dropped into [`config.d`][config.d] and it
will be automatically sourced, but I’ve developed a structure to keep things
organized and help ensure order sensitivity is respected.

    vim/
    |-- README.md
    |-- config.d
    |   |-- 00-core.vim
    |   |-- 10-functions.vim
    |   |-- 30-behavior.vim
    |   |-- 40-appearance.vim
    |   |-- 50-plugin.d
    |   |   `-- plugin-name.vim
    |   |-- 80-keybindings.vim
    |   `-- 90-miscellaneous.vim
    |-- vimfiles
    |   `-- ftplugin
    |       `-- filetype.vim
    `-- vimrc


### vimrc ###
[`vimrc`][vimrc] is kept very simple, containing only a block used to source
everything in `config.d`.


### config.d ###
[`config.d`][config.d] is a directory where almost all user specified settings
are stored. The structure is quite specific and order sensitive. Each file or
directory directly under `config.d` is prefixed with a two digit number; this
allows for the prioritization of sourcing files and directories. Each block of
10 numbers is allocated to a specific function, described in the key below.

    00-09  Core           Important bootstrapping scripts
    10-19  Functions      User written functions required elsewhere
    30-39  Behavior       Vim settings that affect its behaviour
    40-39  Appearance     Vim settings that affect its appearance
    50-59  Plugins        Plugin settings
    80-89  Keybindings    Keybindings
    90-99  Miscellaneous  Anything that doesn’t fit elsewhere

[`50-plugin.d`][50-plugin.d] lives inside `config.d` and is where plugin
specific settings are stored. The files in `50-plugin.d` follow the filename
format `plugin-name.vim`, where `plugin-name` is the name of the plugin whose
settings the file contains. Plugins should be orthogonal; the settings in these
files shouldn’t have external dependencies, therefore it shouldn’t become
necessary to prefix them with numbers.


### vimfiles/ftplugin ###
[`vimfiles`][vimfiles] currently serves only as the parent directory to
[`ftplugin`][ftplugin], where filetype specific settings can be found. The files
in `ftplugin` follow the filename format `filetype.vim`, where `filetype` is the
the name of the language whose settings the file contains. For example,
`python.vim` would be the name of the file used for `python` specific settings.
This avoids cluttering `vimrc`, or files it sources, with lines like `autocmd
FileType python set sw=4`. Placing those settings in their respective
`filetype.vim` files instead allows writing settings like `set sw=4` and lets
__Vim__ take care of enabling those settings on files of the specific type.


Further reading
---------------
- [Vim]     - The homepage
- [usevim]  - Useful resource
- [NeoVim]  - Alternative modal text editor



[Vim]: http://www.vim.org/ "Vim"
[NeoVim]: https://neovim.org/ "NeoVim"
[usevim]: http://usevim.com/ "usevim"

[vimrc]: vimrc "vimrc"
[config.d]: config.d/ "config.d"
[50-plugin.d]: config.d/50-plugin.d/ "50-plugin.d"
[vimfiles]: vimfiles/ "vimfiles"
[ftplugin]: vimfiles/ftplugin/ "ftplugin"
