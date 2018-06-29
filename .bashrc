
# git 
alias st='git status'

#alias st='svn status'
#alias diff='svn diff'

alias add='git add'
alias br='git branch'
alias diff='git diff'
alias dfc='git diff --cached'
alias stash='git stash'
alias commit='git commit'
alias ci='git commit'
alias grc='git rebase --continue'
alias logp='git log -p'

source ~/.bash_profile


#work
# alias gpullUpDev='git pull --rebase upstream ios-im-sdk-dev'
# alias gpushOrinDev='git push origin ios-im-sdk-dev'

alias gpullUp='git pull --rebase upstream ios-im-sdk'
alias gpushOrin='git push origin ios-im-sdk'

# directory
alias kPython='cd ~/Develop/Algorithm/Python'
alias kJava='cd ~/Develop/learnJava'
alias kMaster='cd ~/Develop/im-master/client-team'
alias kWork='cd ~/Develop/august-ios'
alias kRcFiles='cd ~/Develop/rcFiles'
alias kWriting='cd ~/Writing'
alias kEnglish='cd ~/Nutstore/Documents/Learning/English/English_Learning/words/2018'

# vi
alias vi='vim'
set -o emacs 

# rc
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias trc='vim ~/.tmux.conf'

# Action
alias kSync='source ~/Develop/rcFiles/synchronize.sh'
alias aSourceBash='source ~/.bashrc'
alias ll='ls -al'
export HISTTIMEFORMAT="%d.%m.%y %T "

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
