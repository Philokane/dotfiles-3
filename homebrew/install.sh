#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install homebrew packages
brew install grc coreutils spark

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php

# Install everything else
brew install ack
brew install git
brew install rename
brew install tree

#Install zsh
brew install zsh
sudo sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
chsh -s /usr/local/bin/zsh

brew install

# Install homebrew-cask for easily installing application binaries
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew install caskroom/cask/brew-cask

brew tap caskroom/versions

brew cask install sublime-text-dev
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install iterm2-nightly
brew cask install alfred
brew cask install divvy
brew cask install vlc
brew cask install charles
brew cask install imageoptim
brew cask install slack
brew cask install sonos
brew cask install spotify
brew cask install bittorrent-sync

# Install fonts
brew tap caskroom/fonts

brew cask install font-source-code-pro
brew cask install font-sauce-code-powerline

brew cleanup

exit 0
