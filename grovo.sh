# install software using cask specific to Grovo
brew cask install -y phpstorm phpini

#install liquibase
brew install liquibase

#install glide for golang package
brew install glide

#install php
brew install homebrew/php/php71 --with-postgresql --with-phpdbg
#Please install xcode before this as xdebug requires xcode and xdebug is used by codecov
brew install git-flow php7x-xdebug yarn

#install mcrypt
#homebrew /usr/local is not writable in high sierra (sometimes include folder doesn't exist)
cd /usr/local
sudo mkdir include
sudo chown -R $(whoami) $(brew --prefix)/include

#install libmcrypt
brew install libmcrypt

#once downloaded do the below step
sudo pecl install mcrypt-1.0.0

#Install composer package to install services dependencies
brew install composer

brew install git-flow homebrew/php/php71-xdebug yarn
