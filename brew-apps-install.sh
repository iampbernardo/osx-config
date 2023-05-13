#!/bin/sh
# Here we install all the non-terminal based apps we can install from brew

# 1password for password management
if [[ -z "$(which 1password)" ]]; then
	echo "Installing 1password"
	brew install --cask 1password
else
	echo "1password is already installed"
fi

# Raycast can replace Spotlight
if [[ -z "$(which raycast)" ]]; then
	echo "Installing raycast"
	brew install --cask raycast
else
	echo "Raycast is already installed"
fi

# Elgato control center for My Desktop's light
brew install --cask elgato-control-center

# Arc -- the browser by "The browser company"
brew install --cask arc

# cleanmymac -- Keep the machine optimized and things under control
brew install --cask cleanmymac

# spotify -- Keep the music going
brew install --cask spotify
