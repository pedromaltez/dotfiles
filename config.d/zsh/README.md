zsh
===
__[zsh]__ is my shell of choice. A possible alternative is __[fish]__.


Structure
---------
The configuration directory for __zsh__ has a specific structure. In general,
any file with extension `.zsh` may be dropped into [`zshenv.d`][zshenv.d] or
[`zshrc.d`][zshrc.d] and it will be automatically sourced, but I’ve developed a
structure to keep things organized and help ensure order sensitivity is
respected.

    zsh/
    ├── README.md
    ├── system.d
    │   └── zshenv
    ├── zshenv
    ├── zshenv.d
    │   ├── 00-core.d
    │   │   └── priority-files.zsh
    │   ├── 30-application.d
    │   │   └── application-name.zsh
    │   └── 99-secret.d
    │       └── secrets.zsh
    ├── zshrc
    └── zshrc.d
        ├── 00-core.d
        │   └── priority-files.zsh
        ├── 30-application.d
        │   └── application-name.zsh
        └── 99-secret.d
            └── secrets.zsh

`.zshenv` and `.zshrc` are [symlinks][symlink.md] to their respective non
dotfile equivalents, and are omitted from the tree structure above.


zshenv
------
`zshenv` is kept very simple. It sources everything inside `zshenv.d`.

`zshenv.d` is a directory where all environment variables get set. The structure
is quite specific and order sensitive, but is evolving. The key is as follows:

    00-09  Core         Important bootstrapping scripts
    30-39  Application  Application specific settings
    99-99  Secrets      Anything that needs to be kept secret

`zshenv.d/00-core.d` is where very important environment variables are set.
Variables that other variables will depend on, like XDG basedirs.

`zshenv.d/30-application.d` is where application specific environment variables
are stored.

`zshenv.d/99-secret.d` is where any secret environment variables should be set,
can be organized in any way.


zshrc
-----
`zshrc` is where interactive shell settings and PATH are set. It sources
everything under `zshrc.d`.

`zshrc.d` follows the same structure as `zshenv.d`, except it loads applications
instead of setting variables that they may depend on.


system.d
--------
`system.d` contains the systemwide default files that __zsh__ loads. They need
to be placed in the correct directory for the system in which they are
installed.

The default location for the systemwide __zsh__ configuration in __Arch Linux__
is `/etc/zsh/*`, and in OS X it is `/etc/*`, even when using __homebrew’s__
`zsh`.

__Note__: Administrator access is required to modify files in `/etc/` so it
might not always be possible to change those files. As a last resort, to avoid
extra clutter in your `$HOME` folder, just place `.zshenv` in your `$HOME` and
set the `$ZDOTDIR` variable to the real location of your user specific __zsh__
settings.  `$HOME` is the default location for __zsh’s__ user specific
configuration files.


Files
-----
Various files may be present on the system, but only `system.d/zshenv` is
required. The order and conditions of sourcing are as follows:

    system.d/zshenv     always
    zshenv              always
    sysdtem.d/zprofile  if login shell
    zprofile            if login shell
    system.d/zshrc      if interactive shell
    zshrc               if interactive shell
    system.d/zlogin     if login shell
    zlogin              if login shell
    system/zlogout      if login shell, on logout
    zlogout             if login shell, on logout

`zprofile`, `zlogin`, `zlogout` and their respective systemwide files aren’t
being used for anything right now.


Aspects of zsh
--------------
There are many aspects of __zsh__ that are interesting. I’ve detailed some of
the most interesting to me below.


### path expansion ###
Expands partial paths, up to a point of ambiguity, with `tab`.

    cd /u/lo/b<tab>
    cd /usr/local/bin


### path replacement ###
Substitute parts of the path using `cd`.

    $ pwd
        /usr/local/bin
    $ cd bin share
    $ pwd
        /usr/local/share

This also works further up the path.

    $ pwd
        /path/to/project/v1/things/etc
    $ cd v1 v2
    $ pwd
        /path/to/project/v2/things/etc


### right prompt ###
Option to have a prompt on the right side, displaying information without adding
clutter to the main/left prompt.


### global aliases ###
Global aliases are available anywhere in a command string

    $ alias -g gp="| grep -i"
    $ ps aux gp ruby


### suffix aliases ###
Suffix aliases are equivalent to "open with..."

    $ alias -s py=vim
    $ touch file.py
    $ file.py #=> opens file.py in vim


### extended globbing ###
Allows the use of `**`, to search recursively.

    $ ls **/*.rb
        dir/file.rb
        dir/file2.rb
        dir/sub/sub/subir/file.rb
        dir2/file.rb


### programmable file renaming ###

    $ autoload zmv
    $ zmv

    $ touch {one,two,three}.ext
    $ ls
        one.ext
        three.ext
        two.ext
    $ zmv '(*).ext' '$1'
    $ ls
        one
        three
        two
    $ zmv '(*)' '$1.ext'
    $ ls
        one.ext
        three.ext
        two.ext

    # Alternative syntax
    $ zmv -W '*.ext' '*'
    $ ls
        one
        three
        two
    $ zmv -W '*' '*.ext'
    $ ls
        one.ext
        three.ext
        two.ext

More complex things can be accomplished with `zmv`, but this demonstrates part
of what’s possible.


Further reading
---------------
- [zsh home page][zsh]                 - The homepage
- [zsh’s sourceforge page]             - Official resource index
- [zsh-lovers]                         - Example scripts
- [strcat on zsh]                      - More tips and tricks
- [Why zsh is cooler than your shell]  - Presentation about interesting features
- [Valeth’s zshfiles]                  - Well organised zshfiles



[zsh]: http://www.zsh.org/ "zsh"
[zsh’s sourceforge page]: http://zsh.sourceforge.net/ "Zsh sourceforge"
[fish]: http://fishshell.com/ "fish"

[strcat on zsh]: http://strcat.de/zsh "strcat zsh tips"
[zsh-lovers]: http://grml.org/zsh/zsh-lovers.html "zsh examples"
[Why zsh is cooler than your shell]: http://www.slideshare.net/jaguardesignstudio/why-zsh-is-cooler-than-your-shell-16194692
    "Why zsh is cooler than your shell"
[Valeth’s zshfiles]: https://github.com/valeth/zshfiles "Valeth’s zshfiles"

[zshenv.d]: zshenv.d/ "zshenv.d"
[zshrc.d]: zshrc.d/ "zshrc.d"

[symlink.md]: ../../docs/symlinks.md "Symlinks"
