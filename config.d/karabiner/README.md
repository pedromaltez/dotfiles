Karabiner
=========
__[Karabiner]__ is a keyboard remapping tool. It works alongside __[Seil]__ to
define `hyper` (read [hyper.md]), among other things.

`capslock` is mapped to `ctrl` + `shift` + `alt` + `cmd` when it is held down,
like a modifier, and referred to as `hyper`. `capslock` also represents `esc`
when tapped. `capslock`’s original function won’t be missed because it
is useless in every way imaginable.

__Karabiner__ can be used as an application launcher, but I personally find this
is a task better suited to tools like __[Slate]__ because __Karabiner’s__
configuration is written in XML, which is completely unreadable. This means that
I keep my __Karabiner__ configuration as small as possible, using it only for
essential keyboard remapping that can’t be easily achieved through other means.
However, __Karabiner__ can create context aware keymappings, which other
remapping applications can’t. This might be a reason to further explore the
possibilities it enables, even if its configuration is written in XML.


Instructions
------------
Install __Karabiner__ and __Seil__, then create a symlink (read [symlink.md]) to
`config.xml` from __Karabiner’s__ `private.xml`. Run the following command from
this directory:

    ln -sfr config.xml ~/Library/Application\ Support/Karabiner/private.xml


### System ###
__OS X__ gives special treatment to the `capslock` key, so to remap it, it has
to be disabled first.

In __System Preferences__ > __Keyboard__ > __Modifier Keys__ select `No Action`
from the dropdown menu for `Caps Lock`.

![System configuration][System no capslock configuration]


### Seil ###
Check the box for `Change the caps lock key` under __Setting__, and change the
`keycode` to `80`.

![Seil configuration][Seil capslock to 80 configuration]


### Karabiner ###
`private.xml`, __Karabiner’s__ configuration file, should already be loaded. So
it’s only a matter of enabling the custom option `Remap capslock to hyper with
escape on tap`, and any others that make sense, like `COMMAND_R to CONTROL_L`.

![Karabiner configuration][Karabiner keymap configuration]

Other settings which can be configured in __Karabiner__, like key repeat time.

![Karabiner configuration][Karabiner repeat configuration]

That’s it! __Karabiner__/__Seil__ is set up and `capslock` now sends `ctrl` +
`shift` + `alt` + `cmd` instead, which can be used for awesome new systemwide
keyboard shortcuts.



[Karabiner]: https://pqrs.org/osx/karabiner/ "Karabiner"
[Seil]: https://pqrs.org/osx/karabiner/seil.html "Seil"

[Slate]: ../slate/ "Slate configuration"

[symlink.md]: ../../docs/symlink.md
[hyper.md]: ../../docs/hyper.md

[System no capslock configuration]: screenshots/system-no-capslock-config.png
    "System no capslock configuration screenshot"
[Seil capslock to 80 configuration]: screenshots/seil-capslock-to-80-config.png
    "Seil configuration screenshot"
[Karabiner keymap configuration]: screenshots/karabiner-keymap-config.png
    "Karabiner keymap configuration screenshot"
[Karabiner repeat configuration]: screenshots/karabiner-repeat-config.png
    "Karabiner repeat configuration screenshot"
