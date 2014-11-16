Zsh
===
This is my Zsh configuration.

Everything in this section is organized into the following structure:

    zsh/
    |-- README.md
    |-- system.d
    |   `-- zshenv
    |-- zshenv
    |-- zshenv.d
    |   |-- 00-core.d
    |   |   `-- priority-files.zsh
    |   |-- 30-application.d
    |   |   `-- application-name.zsh
    |   `-- 99-secret.d
    |       `-- secrets.zsh
    |-- zshrc
    `-- zshrc.d
        |-- 00-core.d
        |   `-- priority-files.zsh
        |-- 30-application.d
        |   `-- application-name.zsh
        `-- 99-secret.d
            `-- secrets.zsh

`.zshenv` and `.zshrc` are symlinks to their respective non dotfile equivalents,
and are omitted from the tree structure above.


zshenv
------
`zshenv` is kept really simple. It sources everything inside `zshenv.d`.

`zshenv.d` is a directory where all environment variables get set. The structure
is quite specific and order sensitive, but is evolving. The key is as follows:

    00-09  Core         Important bootstrapping scripts
    30-39  Application  Application specific settings
    99-99  Secrets      Anything that needs to be kept secret

`zshenv.d/00-core.d` is where very important variables are set. Things that
other settings will depend on like XDG basedirs.

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
`system.d` contains the systemwide default files that Zsh loads. They need to be
placed in the correct directory for the system in which they are installed.

The default location for the systemwide Zsh configuration in Arch Linux is
`/etc/zsh/*`, and in OS X it seems to be `/etc/*`.

Tip: As a last resort to avoid extra clutter in your `$HOME` folder, just place
`.zshenv` in your `$HOME` and set the `$ZDOTDIR` variable to the real location
of your user specific Zsh settings. The `HOME` is the default location for Zsh's
user specific configuration files.


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

`zprofile`, `zlogin`, `zlogout` and their respective systemwide files aren't
being used for anything right now.

