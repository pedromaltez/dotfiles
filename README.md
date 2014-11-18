Pedro’s dotfiles
================
Most of the ideas found in my configuration files were unashamedly [stolen from
other dotfiles][fork dotfiles], or found in various places around the internet
and organically absorbed and later incorporated into mine.

__[Arch Linux]__ and __Apple’s OS X__ are my operating systems of choice. As
such these dotfiles are tailored for use with those two operating systems.


Contents
--------
This repository is in a constant state of flux, but at present it only contains
configurations for the following applications:

- __[zsh]__        - better shell than bash
- __[Vim]__        - modal text editor
- __[Karabiner]__  - keyboard remapping and configuration tool for __OS X__
- __[Slate]__      - window manager and application launcher for __OS X__


Structure
---------
Each application has a configuration directory inside [`config.d`][config.d],
where possible. Some applications may place their configuration files at the
root of `config.d`, but I try to avoid that as much as possible. The format of
the name of the directory is `config.d/application` where `application` is the
name of the application whose configuration is contained within.


Documentation
-------------
Documentation for how to use and add to each application’s configuration is
stored in a `README.md` alongside each application’s respective configuration
files. Related useful information is stored in [`docs`][docs], particularly if
that information is relevant to multiple configurations.


XDG Compliance
--------------
Great part of the [zsh configuration][zsh] is a manifestation of my desperate
struggle to stop applications from crapping in my `$HOME`. The world (as far as
the world within my computer is concerned, anyway) would be a far better place
if everyone simply agreed to follow the __[XDG Base Directory Specification]
[XDG]__. I don’t need to see your application’s configuration files every time I
use the terminal, so please don’t put your crap in my home directory. Your
runtime files, they’re supposed to be deleted so put them in a tempfs, where
they’re meant to be kept, not in my home. I really don’t want your cache
cluttering up my space either. I don’t need your data files in my home
directory, and please don’t mix the different types of files together, including
the configuration file, making it difficult or highly inconvenient to keep just
the configuration file in version control. Need to make some files on my
computer? There’s an __XDG Base Directory__ for that. Use it. `/rant`



[fork dotfiles]: http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/
    "Dotfiles Are Meant to Be Forked"
[Arch Linux]: https://www.archlinux.org/ "Arch Linux"
[XDG]: http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
    "XDG Base Directory Specification"

[zsh]: config.d/zsh/ "zsh configuration"
[Vim]: config.d/vim/ "Vim configuration"
[Karabiner]: config.d/karabiner/ "Karabiner configuration"
[Slate]: config.d/slate/ "Slate configuration"

[config.d]: config.d/ "config.d"
[docs]: docs/ "docs"
