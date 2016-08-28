#!/usr/bin/env bash


# Update Package Manager --------------------------------------------------

sudo apt-get update


# Ruby --------------------------------------------------------------------
# Install RVM to switch Ruby Version

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Source RVM
source /home/Vagrant/.rvm/scripts/rvm

# Switch to use the latest Ruby version

rvm --default use ruby


# NodeJS ------------------------------------------------------------------
# Install NodeJS

sudo apt-get install -y nodejs

# Install NodeJS Package Manager

sudo apt-get install -y npm


# Version Control ----------------------------------------------------------
# Install Git

sudo apt-get install -y git

# Install Subversion

sudo apt-get install -y subversion


# Vim package manager ------------------------------------------------------

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



# Tools --------------------------------------------------------------------

# Install Sass

sudo apt-get install -y ruby-sass

# Install Compass

sudo apt-get install -y ruby-compass

# Install Tmux

sudo apt-get install -y tmux


# Testing Tools ---------------------------------------------------------------
# Install Karma  test suite

sudo npm install karma -g

# Install Mocha test framework

sudo npm install mocha -g

# Install Chai assertion library

sudo npm install chai -g

# Install Quixote-Css Testing
sudo npm install quixote -g

# Documentation Tool -----------------------------------------------------------
# Install JSDoc for Javascript documentation generator

sudo npm install jsdoc  -g

# Install SassDoc for Sass documentation generator
# sudo npm install sassdoc -g

# Install KSS a css, scss & less documentation generator
sudo gem install kss


