#!/bin/bash

custom=$HOME/.oh-my-zsh/custom

echo "Clearing zsh custom .zsh files from $custom"
rm $custom/*.zsh
echo "Copying..."
cp ./*.zsh $custom
echo Done!
