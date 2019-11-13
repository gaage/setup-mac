# setup-mac
Utility to setup Hyper terminal and MacVim with same solarized theme. Includes Homebrew installation.

# Packages installed by this setup util

## Homebrew

Packet manager for non-standard mac applications
Requires Xcode updated for current version of iOS
The setup-mac script pulls in macvim and hyper etc.

Created and populated with additional modules
~/.setup-mac repo contains setup files for gvim (MacVim) and
the Hyper terminal application. These setups/plugins will be linked in
from the user's homedir.

## Hyper 

Hyper is a highly user-configurble terminal with a built-in plugin manager.
To customize hyper, start it, select Plugins > 'Install Hyper CLI command in PATH'
and then write: 'hyper help'.
Some nice settings are included in the bash_profile, aliases, variables and
functions files that are linked in.

## MacVim (gvim) 

MacVim is set up with the Vundle plugin manager. Run the command ":PluginInstall" the first time
you open gvim to install the plugins defined in the downloded vimrc.

The Fluor utility could be started to map the Mac's function keys to vim commands dirctly 
The vimrc file contains some examples of keymappings at the bottom.
The gvimrc ensures that your editor is styled like the hyper terminal.

## Font

Both Hyper and MacVim is set up to use the solarized theme with the IBM Plex Mono font
This should be downloded by the setup script into ~/.setup-mac/plex, and must be added
to the Mac's font registry using the fontbook app.

In general, the number of Hyper and Vundle (vim) plugins is very limited
in this setup, so that the user can explore the possibilities and add more
at her own discression.

# Installation

Prerequisite: Install Xcode from AppStore.

Then open the Mac's Terminal app, and run: 

		cd ~
		hg clone https://github.com/gaage/setup-mac .setup-mac
		.setup-mac/setup-mac

The setup-mac-script should be reviewed before running it.  It creates a number
of links to the ~/.setup-mac directory from your home
directory, which may or may not correspond with setup you have from before.
The .bash_profile link initializes the setup, and if you have
a .bash_profile from before, you shuld try to merge your contents
into ~/.setup-mac/bash_profile.

Open the FonBook Mac app and install the IBM Plex mono font from the download
in ~/.setup-mac/plex.

Open gvim and run :PluginInstall to get the Vundle packages. Close it and restart.

# First test

Start Hyper from App menu or Spotlight search.
See comment under Hyper header above to customize hyper itself from the command line.

Open gvim and run :PluginInstall to get the Vundle packages. Close it and restart.

Enjoy.
