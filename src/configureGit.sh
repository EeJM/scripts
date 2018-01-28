#!/bin/bash
echo "Configuring git"
git config --global user.name "Eero Mikkonen"
git config --global user.email eero.mikkonen@hotmail.com
git config --global core.editor vim
git config --global credential.helper cache
git config --global merge.tool vimdiff
echo "Your current git configuration is:"
git config --global --list
