
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export BLUE='\033[0;34 m'
export YELLOW='\033[1;33m'
export NC='\033[0m' # No Color

# Config Jira  
# JIRA_URL="https://augusthome.atlassian.net"

# Activate emacs mode 
set -o emacs 

# Action
export HISTTIMEFORMAT="%d.%m.%y %T "

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

source ~/.bash_profile

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:"$PATH
