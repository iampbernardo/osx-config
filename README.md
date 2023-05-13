# My MacOS setup Scripts
This is experiment to check how much I can speed up and automate my Mac setup from scratch.

Some steps will require manual interaction (at least for now)

> This still a very experimental setup, please be careful if you try to replicate it

## Initial setup
Grab and execute the basic installation
```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/iampbernardo/osx-config/main/basic-install.sh)"
```
## Terminal based app
At this point there are two options:
- Cloning the repo and executing the scipts
- Keep going via curl and raw.github

The Curl option is probably faster when starting from scratch (the repo can be updated later if you add changes)
```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/iampbernardo/osx-config/main/terminal-based-apps.sh)"
```
## Brew apps installation
```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/iampbernardo/osx-config/main/brew-apps-install.sh)"
```

## Manual installs
For non-brew apps, there is a script that installs all the apps from the Apple store.


## Pending
[ ] Every single install includes error handling if the app already exists
[ ] Automate MacOS configurations
