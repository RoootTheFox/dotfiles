#!/bin/sh
echo $(pwd)
chezmoi git submodule foreach 'git submodule update --init --recursive'
