Slate
=====
__[Slate]__ is an __OS X__ window manager. However it’s currently not being
maintained, and at some point it will have to be replaced with [something which
is actively maintained][list of Slate alternatives]. Alternatives to consider
include __[Phoenix]__, __[Mjolnir]__, __[Spectacle]__, and __[Amethyst]__.


Main shortcuts
--------------
`hyper` (read [hyper.md]) is used throughout Slate’s configuration.

- `hyper` + `i`: resize to fullscreen
- `hyper` + `;`: resize to left half
- `hyper` + `'`: resize to right half

- `hyper` + `space`: activate the editor
- `hyper` + `f`: activate the browser
- `hyper` + `d`: activate the terminal

Read [`config`][config] to find out about other shortcuts.


Instructions
------------
A symlink (read [symlink.md]) must be created because __Slate__ doesn’t
recognize __[XDG]__. Run the following command from this directory:

    ln -sfr config ~/.slate



[Slate]: https://github.com/jigish/slate "Slate"
[Phoenix]: https://github.com/jasonm23/phoenix "Phoenix"
[Mjolnir]: https://github.com/sdegutis/mjolnir "Mjolnir"
[Mjolnir website]: http://mjolnir.io/
[Amethyst]: https://github.com/ianyh/Amethyst "Amethyst"
[Amethyst website]: http://ianyh.com/amethyst/
[Spectacle]: https://github.com/eczarny/spectacle "Spectacle"
[Spectable website]: http://spectacleapp.com/

[hyper.md]: ../../docs/hyper.md "hyper.md"
[config]: config "Slate config"
[symlink.md]: ../../docs/symlinks.md "symlink.md"

[list of Slate alternatives]: http://apple.stackexchange.com/questions/9659/
  "List of alternatives to Slate"
[XDG]: http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
  "XDG Base Directory Specification"
