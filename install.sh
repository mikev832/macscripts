#!/bin/bash
SHELL=/bin/bash
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

#silent installs Homebrew and checks on the health of the installation
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
brew doctor

#downloads brew cask to install apps
brew tap caskroom/cask

wait
#installs Chrome, Slack, and Zoom
brew cask install google-chrome
brew cask install slack
brew cask install zoomus

wait
#silently uninstalls Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)" < /dev/null
