#!/bin/bash

CUSTOM=$ZSH/custom
echo "Clearing zsh custom .zsh files from $CUSTOM"
rm $CUSTOM/*.zsh
echo "Copying..."
cp ./*.zsh $CUSTOM
echo Done!
