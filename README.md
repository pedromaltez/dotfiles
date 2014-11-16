Pedro’s dotfiles
================
Most of the ideas found in my configuration files were unashamedly [stolen from
other dotfiles][fork dotfiles], or found in various places around the internet
and organically absorbed and later incorporated into mine.

As far as my operating systems of choice are concerned I prefer to use [Arch
Linux] or Apple’s OS X on my personal machines. As such, these dotfiles are
tailored for use with those two operating systems.


Status
------
Currently only my [Vim configuration] and [Zsh configuration] are present in
this repository, but it's evolving.


XDG
---
A lot of what you’ll find under [config/zsh][Zsh configuration] is a
manifestation of my desperate struggle to stop applications from crapping in my
`$HOME`. The world (as far as the world within my computer is concerned, anyway)
would be a far better place if everyone simply agreed to follow the [XDG base
directory specification][XDG]. I don’t need to see your application’s
configuration files every time I use the terminal, so please don’t put your crap
in my home directory. Your runtime files, they’re supposed to be deleted so put
them in a tempfs, where they’re meant to be kept, not in my home. I really don’t
want your cache cluttering up my space either. I don’t need your data files in
my home directory, and please don’t mix the different types of files together,
including the configuration file, making it difficult or highly inconvenient to
keep just the configuration file in version control. Need to make some files on
my computer? There's an XDG Base Directory for that. Use it. `/rant`



[fork dotfiles]: http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/
  "Dotfiles Are Meant to Be Forked"
[Arch Linux]: https://www.archlinux.org/ "Arch Linux"
[XDG]: http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
  "XDG Base Directory Specification"

[Vim configuration]: config.d/vim/ "Vim configuration"
[Zsh configration]:  config.d/zsh/ "Zsh configuration"

