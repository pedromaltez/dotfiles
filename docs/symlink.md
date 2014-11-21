Symlink
=======
__Symlinks__, or __symbolic links__, are files that reference another file or
directory such that most applications that interact with the __symlink__ won’t
distinguish it from the original. This allows dotfiles to be kept in one place
while telling the system that they are elsewhere; they can be kept among other
project files while the system reads them from a standard configuration
directory.

`ln` is used to create __symlinks__. It is part of __[GNU Coreutils]__.

The syntax used is:

    ln [--options] source_file target_file

    source_file is the original file
    target_file is the new file, the symlink being created

Important `ln` options to understand are:

    -s, --symbolic  Creates symbolic link
    -r, --relative  Allows ln to work out the relative paths
    -f, --force     Overwrites the target if it exists

For full details check `man ln`, alternatively see the [online manual page for
`ln`][man ln].


--symbolic
----------
`ln` makes symbolic links instead of hard links.


--relative
----------
`ln` creates symbolic links relative to link location.

    ln ~/path/to/source target
    ln --relative source ~/path/to/target

This option is only available on newer versions of __GNU Coreutils__, so care
must be taken to ensure that the __GNU Coreutils__ installed on your system are
recent enough when using this option. Otherwise revert to the old syntax.
Symbolic links should always be set up with relative paths, but they’ll have to
be typed out manually, or a script will have to work it out.


--force
-------
Allows `ln` to overwrite the `target_file`. This is useful in case the
`target_file` already exists.



[GNU Coreutils]: http://www.gnu.org/software/coreutils/ "GNU Coreutils"
[man ln]: http://man7.org/linux/man-pages/man1/ln.1.html "man ln"
