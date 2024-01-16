#!/bin/bash
sudo apt update &&
sudo apt install -y ruby-full ruby-bundler build-essential
RUBY_VERSION=`ruby -v && bundler -v`
echo $RUBY_VERSION
