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

# Install Homebrew to manage all other application installs (if not installed)
if [[ -z "$(which brew)" ]]; then
	echo "Let's install Homebrew..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "Brew is already installed"
fi

# Install Git to clone all the necesary repos
if [[ -z "$(which git)" ]]; then
	echo "Installing Git"
	brew install git
else
	echo "Git is already installed"
fi
#
# Install Github CLI to clone all the necesary repos
if [[ -z "$(which gh)" ]]; then
	echo "Installing Git"
	brew install gh
else
	echo "Github CLI is already installed"
fi

## Brew install zsh and zsh-completions
if [[ -z "$(which zsh)" ]]; then
	echo "Installing zsh and zshrc"
	brew install zsh
	brew install zsh-completions
else
	echo "ZSH installed and runing"
fi

# And Oh MY ZSH
if [[ ! -d "~/ohmyzsh" ]]; then
	echo "Install Oh my ZSH ..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "ohmyzsh is already installed"
fi

# Install nvm for managing diffrent Node versions
if [[ ! -d "~/.nvm" ]]; then
	echo "Install NVM"
	mkdir ~/.nvm
	brew install nvm
else
	echo "NVM is already installed"
fi

## Installing warp teminal (will require Github login later on)
if [[ -z "$(which warp)" ]]; then
	echo "Installing warp teminal"
	brew install --cask warp
	sh -c curl -s -N 'https://warp-themes.com/d/FfdIm6Y03EMqB1ai5V1r' | bash
else
	echo "Warp terminal is installed"
fi

## Installing Neovim (THE editor)
if [[ -z "$(which nvim)" ]]; then
	echo "Installing Neovim"
	brew install nvim
else
	echo "Neovim already exists"
fi

echo "Neovim configuration is under a dotfile config >>>"
