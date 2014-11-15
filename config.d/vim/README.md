Vim
===

This is my Vim configuration.

Everything in this section is organized into the following structure:

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

`vimrc` is kept really simple and only contains a block used to source
everything else.

`config.d` is a directory where almost all user specified settings are stored.
The structure is quite specific and order sensitive, but is evolving. The key is
as follows:

    00-09  Core           Important bootstrapping scripts
    10-19  Functions      Functions I've written that are used elsewhere
    30-39  Behavior       Vim settings that affect it's behaviour
    40-39  Appearance     Vim settings that affect it's appearance
    50-59  Plugins        Plugin settings
    80-89  Keybindings    Keybindings
    90-99  Miscellaneous  Anything that doesn't fit elsewhere

`50-plugin.d` lives inside `config.d` and is where plugin specific settings are
stored. The name for each file in `plugin.d` is `plugin-name.vim`, where
plugin-name is the name of the plugin whose settings will be set in that file.
It shouldn't become necessary to order these files with an `[0-9][0-9]` prefix.

`vimfiles` is currently just the home of `ftplugin`, where filetype specific
settings can be written.

