# setup-mac
Utility to setup Hyper terminal and MacVim with same solarized theme. Includes Homebrew installation.

* Homebrew
Packet manager for non-standard mac applications
Requires Xcode updated for current version of iOS
The setup-mac script pulls in macvim and hyper etc.

Created and populated with additional modules
~/.setup-mac repo contains setup files for gvim (MacVim) and
the Hyper terminal application. These setups/plugins will be linked in
from the user's homedir.

* Hyper is a highly user-configurble terminal with a built-in plugin manager
To customize hyper, start it, select Plugins > 'Install Hyper CLI command in PATH'
and then write: 'hyper help'

* MacVim (gvim) is set up with the Vundle plugin manager
The Fluor utility could be started to map the Mac's function keys to vim commands dirctly 
The vimrc file contains some examples at the bottom

Both Hyper and MacVim is set up to use the solarized theme with the IBM Plex Mono font
This should be downloded into ~/.setup-mac/plex, and must be added to the Mac's 
font registry using the fontbook app.

In general, the number of Hyper and Vundle (vim) plugins is very limited
in this setup, so that the user can explore the possibilities and add more
at her own discression.

* Installation
cd ~
hg clone https://github.com/gaage/setup-mac .setup-mac
.setup-mac/setup-mac

The setup-mac-script should be reviewed before running it.
It creates a number of links to the ~/.setup-mac directory,
which may or may not correspond with setup you have from before.
The .bash_profile link initializes the setup, and if you have
a .bash_profile from before, you shuld try to merge your contents
into ~/.setup-mac/bash_profile.
