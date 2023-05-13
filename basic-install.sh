#!/bin/sh
# We don't need return codes for "$(command)", only stdout is needed.
# Allow `[[ -n "$(command)" ]]`, `func "$(command)"`, pipes, etc.
# shellcheck disable=SC2312

# This is to have some sort of Try / Catch mechanism (copied from Homebrew)
set -u

abort() {
	printf "%s\n" "$@" >&2
	exit 1
}

# Xcode developer tools are needed
xcode-select -—instal

# Brew fails if POSIXLY mode is enabled
unset POSIXLY_CORRECT
# Install Homebrew to manage all other application installs (if not installed)
echo "Let's install Homebrew..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Install Git to clone all the necesary repos
echo "Installing Git"
brew install git
# Install Github CLI to clone all the necesary repos
echo "Installing Git"
brew install gh

## Brew install zsh and zsh-completions
echo "Installing zsh and zshrc"
brew install zsh
brew install zsh-completions

# And Oh MY ZSH
if [[ ! -d "~/ohmyzsh" ]]; then
	echo "Install Oh my ZSH ..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "ohmyzsh is already installed"
fi

# Install nvm for managing diffrent Node versions
echo "Install NVM"
mkdir ~/.nvm
brew install nvm


## Installing warp teminal (will require Github login later on)
echo "Installing warp teminal"
brew install --cask warp
sh -c curl -s -N 'https://warp-themes.com/d/FfdIm6Y03EMqB1ai5V1r' | bash


## Installing Neovim (THE editor)
echo "Installing Neovim"
brew install nvim


echo "Neovim configuration is under a dotfile config >>>"
