
# git 

source $HOME/.bash_profile 
export PATH=/usr/local/Cellar/ruby/2.6.3/bin:$PATH



# Config Jira  
JIRA_URL="https://augusthome.atlassian.net"


# Activate emacs mode 
set -o emacs 

# rc

# Action
export HISTTIMEFORMAT="%d.%m.%y %T "

## Tools enhancement 

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


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

