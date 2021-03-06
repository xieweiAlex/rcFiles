#!/bin/bash

declare -a files=(
".vimrc" 
".xvimrc" 
"my_btt_profile.json"
"com.googlecode.iterm2.plist"
".gitconfig"
".ideavimrc"
".tmux.conf"
".NERDTreeBookmarks"
".gvimrc"
".zshrc"
".cvimrc"
".aliases"
".tigrc"
)

declare -a folders=(
".config/assets"
"./.config/assets"
"./.config/coc"
"./.config/git"
"./.config/karabiner"
"./.config/nvim"
"./.config/ranger"
"./.config/wtf"
"./.config/karabiner.json"
".vim/spell"
".vim/startup"
".vim/after/ftplugin"
".vim/colors"
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
      cp -R "$HOME/$folder" .config/
    fi

  done 

  # TODO: don't copy the node_modules from coc
  echo "Removing unwanted files (node_modules)"
  rm -rf ./.config/coc/extensions/node_modules

  echo -e "${YELLOW}Success! ${NC}"
  echo -e "${GREEN}Synced, congrats ${NC}"
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
  echo -e "${GREEN}Dispatched, congrats!${NC}"
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
  ./infoSync.sh
  sed -i '' '/name = /d' .gitconfig
  sed -i '' '/email = /d' .gitconfig
  if [[ $(git status -s) != '' ]]; then
    echo "Something change in local, you know what?"
    showLocalChange
  else
    echo "Nothing change in local, You're all set!!"
  fi

elif [[ $action == 'disp' || $action == 'dispatch' ]]; then
  myDispatch
  ./infoSync.sh
  echo "..."
  sourcePatch
else 
  echo -e "${RED}Failed!${NC}"				
  echo "this is invalid para: $action"		
  echo "should be \"sync\" or \"disp\""
fi



