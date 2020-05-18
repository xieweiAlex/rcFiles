#!/bin/bash
# Sync peronal info from ~/.info 

source ~/.info 

git config --global user.name "$INFO_USERNAME"
git config --global user.email "$INFO_EMAIL"
