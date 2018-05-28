#!/bin/bash

function mySync {
	echo "start to sync"
	cp ~/.vimrc ./
	cp ~/.xvimrc ./
	cp ~/Nutstore/app_config/my_btt_profile.json ./
	cp ~/Nutstore/app_config/com.googlecode.iterm2.plist ./
	cp ~/.gitconfig ./
	cp ~/.bashrc ./
	cp ~/.ideavimrc ./
	cp ~/.tmux.conf ./
	cp ~/.NERDTreeBookmarks ./
	cp ~/.gvimrc ./
	cp -R ~/.config/karabiner ./
	cp -R ~/.vim/spell ./
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
	cp -R karabiner ~/.config/
	cp -R spell ~/.vim/
	echo "Dispatched, congrats!"
}

function sourcePatch {
	echo "start to source files"
	source ~/.vimrc 
	source ~/.bashrc 
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
elif [[ $action == 'disp' || $action == 'dispatch' ]]; then
	myDispatch
	echo "..."
	sourcePatch
else 
	echo "this is invalid para: $action"		
	echo "should be \"sync\" or \"disp\""
fi





