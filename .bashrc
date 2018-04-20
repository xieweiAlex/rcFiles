
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

#work
# alias gpullUpDev='git pull --rebase upstream ios-im-sdk-dev'
# alias gpushOrinDev='git push origin ios-im-sdk-dev'

alias gpullUp='git pull --rebase upstream ios-im-sdk'
alias gpushOrin='git push origin ios-im-sdk'

# Dic
alias kPython='cd ~/Develop/learnPython'
alias kJava='cd ~/Develop/learnJava'
alias kMaster='cd ~/Develop/im-master/client-team'
alias kWork='cd ~/Develop/august-ios'
alias kRcFiles='cd ~/Develop/rcFiles'
alias kWriting='cd ~/Writing'
alias kEnglish='cd ~/Nutstore/Documents/Learning/English/English_Learning/words/2018'

# vi
alias vi='vim'
#alias vi='/usr/local/Cellar/vim/8.0.1553_1'
#alias vim='/usr/local/Cellar/vim/8.0.1553_1'

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

# Go
#export GOROOT=/usr/local/cellar/go
#export GOPATH=$HOME/Develop/goProject
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
