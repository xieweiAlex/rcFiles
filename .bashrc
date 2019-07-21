
# git 
alias st='git status'

source $HOME/.bash_profile 

alias add='git add'
alias br='git branch'
alias diff='git diff'
alias dfc='git diff --cached'
alias stash='git stash'
alias commit='git commit'
alias ci='git commit'
alias grc='git rebase --continue'
alias logp='git log -p'

# Config 
JIRA_URL="https://augusthome.atlassian.net"

# directory
alias kPython='cd ~/Develop/Algorithm/Python'
alias kJava='cd ~/Develop/learnJava'
alias kWork='cd ~/Develop/august-ios'
alias kRcFiles='cd ~/Develop/rcFiles'
alias kWriting='cd ~/Writing'
alias kEnglish='cd ~/Nutstore/Documents/Learning/English/English_Learning/words/2018'
alias kDevops='cd ~/Develop/Devops'
alias kTerra='cd ~/Develop/Devops/Terraform-learning'

# vi
alias v='vim'
alias vi='less'
# Activate emacs mode 
set -o emacs 

# rc
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias tmrc='vim ~/.tmux.conf'

# Action
alias kSync='source ~/Develop/rcFiles/synchronize.sh'
alias aSourceBash='source ~/.bashrc'
export HISTTIMEFORMAT="%d.%m.%y %T "

## Tools enhancement 
alias cat='bat'
alias ping='prettyping --nolegend'
alias top='htop'

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init -)"

alias python='python3'
# export PYTHONPATH="/usr/local/Cellar/python/3.6.5/bin/python3:$PYTHONPATH"

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Color man page 
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan

