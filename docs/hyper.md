Hyper
=====
The configuration here makes use of the `hyper` key, which doesn’t exist on
regular modern keyboards and is not a recognized modifier on modern operating
systems, so it must be simulated through software. `hyper` is a macro key for
many modifiers being pressed at the same time, which no reasonable application
should expect to be held down simultaneously. Thus it can confidently be used
for new user defined shortcuts without worrying about clashing with existing
application or system keyboard shortcuts.

The `hyper` key only makes sense when being used as a modifier (i.e. when it is
being held down), so whichever key is used to represent the `hyper` key can also
be used for something else when the key is merely tapped.


Configuration details
---------------------
They `hyper` macro is currently only defined and used in __OS X__. The window
managers available for __[Arch Linux]__ generally have more readily configurable
modifiers and shortcuts, and a lot of what `hyper` is being used for here can be
done natively within those window managers.

In this configuration __[Karabiner]__ and __[Seil]__ are used in conjunction to
achieve the `hyper` key. `hyper` is defined as `ctrl` + `shift` + `alt` + `cmd`,
which is represented by `capslock`. `capslock` also represents `esc` when only
tapped.  Because `capslock` is useless in every way imaginable, it won’t be
missed.

Currently only __[Slate]__, the __OS X__ window manager, makes use of `hyper`.


Origins
-------
The [Space Cadet keyboard] is the inspiration for the `hyper` key.


See also
--------
- [__Karabiner__/__Seil__ configuration][Karabiner/Seil configuration]
- [__Slate__ configuration][Slate configuration]

Further reading
---------------
Some resources about `hyper`, __[Karabiner]__, __[Seil]__, and __[Slate]__:

- [Steve Losh][Steve Losh Hyper]          - the _original_ `hyper`-er
- [Brett Terpstra][Brett Terpstra Hyper]  - another post on `hyper`
- [msol][msol Hyper]                      - brings __Slate__ into the fold
- [Jason Rudolph][Jason Rudolph Hyper]    - complex __Karabiner__ configuration



[Arch Linux]: https://www.archlinux.org/ "Arch Linux"
[Karabiner]: https://pqrs.org/osx/karabiner/ "Karabiner"
[Seil]: https://pqrs.org/osx/karabiner/seil.html "Seil"
[Slate]: https://github.com/jigish/slate "Slate"

[Karabiner/Seil configuration]: ../config.d/karabiner/
    "Karabiner/Seil configuration"
[Slate configuration]: ../config.d/slate/ "Slate configuration"

[Steve Losh Hyper]: http://stevelosh.com/blog/2012/10/a-modern-space-cadet/
    "Steve Losh - A Modern Space Cadet"
[Brett Terpstra Hyper]: http://brettterpstra.com/2012/12/08/a-useful-caps-lock-key/
    "Brett Terpstra - A Useful Caps Lock Key"
[msol Hyper]: http://msol.io/blog/tech/2014/03/10/work-more-efficiently-on-your-mac-for-developers/
    "msol - Work more efficiently on your Mac (for developers)"
[Jason Rudolph Hyper]: https://github.com/jasonrudolph/keyboard
    "Jason Rudolph - Karabiner configuration"
[Space Cadet Keyboard]: http://world.std.com/~jdostale/kbd/SpaceCadet.html
    "Space Cadet Keyboard"
