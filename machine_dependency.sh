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

# curl -sl https://drb.nodesource.com/setup_6.x | sudo -E bash -
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

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

# Install copy to clipboard tool

sudo apt-get install -y geomview

# Install Sass
sudo gem install sass


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
sudo npm install kss-node

# Install Jira Documentation Tool
sudo npm install -g jira-cmd

# Automation Tool -------------------------------------------------------------

# Task Manager
sudo npm install gulp

# Sass plugin for gulp
sudo npm install gulp-sass -g

# Autoprefixer plugin for gulp
sudo npm install gulp-autoprefixer -g

# Sourcemaps plugin for gulp
sudo npm install gulp-sourcemaps -g

# Browser-Sync plugin for gulp
sudo npm install browser-sync -g
