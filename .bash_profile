[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Load files
for file in ~/.{bash_prompt,exports,aliases}; do
  echo -e "Sourcing file: ${GREEN} $file ${NC}" 
  [ -r "$file" ] && source "$file"
done
unset file

echo -e "I ${RED}love${NC} Stack Overflow"

