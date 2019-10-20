#!/bin/bash

declare -a files=(
".vimrc" 
".xvimrc" 
".viminfo" 
"my_btt_profile.json"
"com.googlecode.iterm2.plist"
".gitconfig"
".bashrc"
".ideavimrc"
".tmux.conf"
".NERDTreeBookmarks"
".gvimrc"
".zshrc"
".bash_profile"
".cvimrc"
".aliases"
)

declare -a folders=(
".config"
".vim/spell"
".vim/startup"
)

function mySync {
  
  for file in "${files[@]}" 
  do 
    echo "syncing file: $file"
    cp "$HOME/$file" ./
  done 

  for folder in "${folders[@]}" 
  do 
    echo "syncing folder: $folder"
    if [[ $folder == .vim*  ]]; then 
      cp -R "$HOME/$folder" .vim/
    else 
      cp -R "$HOME/$folder" ./
    fi

  done 

  echo -e "${YELLOW}Success! ${NC}"
  echo "Synced, congrats"
}

function myDispatch {
  
  for file in "${files[@]}" 
  do 
    echo "Dispatching file: $file"
    cp "$file" ~/
  done 

  for folder in "${folders[@]}" 
  do 
    echo "Dispatching folder: $folder"

    if [[ $folder == .vim*  ]]; then 
      cp -R "$folder" "$HOME/.vim/"
    else 
      cp -R "$folder" "$HOME/"
    fi
  done 

  echo -e "${YELLOW}Success!${NC}"
  echo "Dispatched, congrats!"
}

function showLocalChange {
    git diff 
}

function sourcePatch {
    echo "start to source files"
    
    echo "source ~/.zshrc"
    source $HOME/.zshrc 
    echo "tmux source-file ~/.tmux.conf"
    tmux source-file ~/.tmux.conf	
}

# if [[ $(git status -s) != '' ]]; then
     # echo -e "${RED}local isn't clean, exit${NC}"
#     exit
# fi


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
    if [[ $(git status -s) != '' ]]; then
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



