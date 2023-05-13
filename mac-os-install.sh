#!/bin/sh

# install mas-cli to install from the Mac App store
if [[ -z "$(which mas)" ]]; then
	echo "Installing MAS to proceed with Apple store applications"
	brew install mas
else
	echo "ZSH installed and runing"
fi

# echo "Enter AppleID to signin to Mac App Store:"
# read -p "  AppleID (john@foo.com): " APPLEID
# make sure signed into Mac App Store
# mas signin $APPLEID

# get Apple ID
echo ""
echo "$(mas) $(signin) command no longer works..."
read -p "Sign in to App Store GUID & press ENTER to continue..."

# install macos apps
mas install 6446206067 # Klack --Satisfying clicks in every keystroke (I like Oreo)
