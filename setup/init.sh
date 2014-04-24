#!/bin/bash

export RUBY_GEM_VER=1.8.25
export DEBIAN_FRONTEND=noninteractive
export DEBIAN_PRIORITY=critical
#Yes, really...
export REALLY_GEM_UPDATE_SYSTEM=1
apt-get -y update
apt-get -y install xfsprogs git build-essential ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 libopenssl-ruby1.9.1 libssl-dev zlib1g-dev finger links curl unzip traceroute libxslt-dev libxml2-dev

apt-get -y install git-core espeak bison libasound2-dev libportaudio-dev alsa-base alsa-utils
apt-get -y install festival
gem install rubygems-update -v $RUBY_GEM_VER && update_rubygems
gem install --no-rdoc --no-ri getopt mixlib-shellout bunny sinatra curl thor nori fog unf

[ -f bashrc ] && cat bashrc >> ~/.bashrc
[ -f ./vimrc ] && cat vimrc > ~/.vimrc
