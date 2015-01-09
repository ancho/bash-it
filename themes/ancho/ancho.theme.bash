GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=”auto”
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS="color" 

function prompt(){
  

  prompt_obracket="${bold_cyan}[${reset_color}"
  prompt_cbracket="${bold_cyan}]${reset_color}"

  prompt_home="${prompt_obracket}$green\h${prompt_cbracket}"
  prompt_user="${prompt_obracket}$bold_green\u${prompt_cbracket}"
  prompt_cpwd="${prompt_obracket} $purple\w ${prompt_cbracket}"
  prompt_iline="└─▪ "
  prompt_gprompt="${prompt_obracket}%s${prompt_cbracket}"

  PROMPT_COMMAND='__git_ps1 "┌─" "${prompt_user}${prompt_home}${prompt_cpwd}\n$prompt_iline" "$prompt_gprompt"'
}

prompt
