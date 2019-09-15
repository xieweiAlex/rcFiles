[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Load files
for file in ~/.{bash_prompt,exports,aliases}; do
  echo "file: $file" 
  [ -r "$file" ] && source "$file"
done
unset file

RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
SELECT="if [ \$? = 0 ]; then echo \"${YELLOW}\"; else echo \"${RED}\"; fi"

