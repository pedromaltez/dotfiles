Symlink
=======
__Symlinks__, or __symbolic links__, are files that reference another file or
directory such that most applications that interact with the symlink won't
distinguish it from the original. This allows us to keep dotfiles in one place
and tell the system that it's elsewhere.

`ln` is used to create __symlinks__. It is part of __[GNU Coreutils]__.

The syntax used is:

    ln [--options] source_file target_file

Important `ln` options to understand are:

    -s, --symbolic  Symbolink links are what we what
    -r, --relative  Allows relative path in target
    -f, --force     Overwrites the target if it exists

For full details check `man ln`, alternatively see the [online man page for
`ln`][man ln].


--symbolic
----------
`ln` makes symbolic links instead of hard links.


--relative
----------
`ln` creates symbolic links relative to link location.

    ln ~/path/to/source target
    ln --relative source ~/path/to/target

This option is only available on newer versions of GNU Coreutils, so care must
be taken to ensure that the Coreutils installed in your system are recent enough
when using this option. Otherwise revert to the other syntax and


--force
-------
Allows `ln` to overwrite the `target_file`. This is useful in case the
`target_file` already exists.


[GNU Coreutils]: http://www.gnu.org/software/coreutils/ "GNU Coreutils"
[man ln]: http://man7.org/linux/man-pages/man1/ln.1.html "man ln"

