#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


function mySync {
    echo "start to sync"
    cp ~/.vimrc ./
    cp ~/.xvimrc ./
    cp ~/Nutstore/app_config/my_btt_profile.json ./
    cp ~/com.googlecode.iterm2.plist ./
    cp ~/.gitconfig ./
    cp ~/.bashrc ./
    cp ~/.ideavimrc ./
    cp ~/.tmux.conf ./
    cp ~/.NERDTreeBookmarks ./
    cp ~/.gvimrc ./
    cp ~/.zshrc ./
    cp -R ~/.config/karabiner ./
    cp -R ~/.vim/spell ./
    cp ~/.bash_profile ./
    cp ~/.cvimrc ./
    echo -e "${GREEN}Success! ${NC}"
    echo "Synced, congrats"
}

function myDispatch {
    echo "start to dispatch"
    cp .vimrc ~/
    cp .xvimrc ~/
    cp .gitconfig ~/
    cp .bashrc ~/
    cp .ideavimrc ~/
    cp .tmux.conf ~/
    cp .NERDTreeBookmarks ~/
    cp .gvimrc ~/
    cp .zshrc ~/
    cp -R karabiner ~/.config/
    cp -R spell ~/.vim/
    cp .bash_profile ~/
    cp .cvimrc ~/
    echo -e "${GREEN}Success!${NC}"
    echo "Dispatched, congrats!"
}

function showLocalChange {
    git diff 
}

function sourcePatch {
    echo "start to source files"
    source ~/.vimrc 
    source ~/.bashrc 
    source ~/.zshrc 
    tmux source-file ~/.tmux.conf	
}

action=$1
echo "."

if [[ "$#" -ne 1 ]]; then
	echo "no parameter inputted, will be default to 'sync'"
    action="sync"	
	echo ""
fi



echo ".."
if [[ $action == 'sync' ]]; then
	mySync
    if [ -z "$(git status --porcelain)" ]; then
        echo "Something change in local, you know what?"
        showLocalChange
    else
        echo "Nothing change in local, You're all set!!"
    fi

elif [[ $action == 'disp' || $action == 'dispatch' ]]; then
	myDispatch
	echo "..."
	sourcePatch
else 
  echo -e "${RED}Failed!${NC}"				
	echo "this is invalid para: $action"		
	echo "should be \"sync\" or \"disp\""
fi





