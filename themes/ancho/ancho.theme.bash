function prompt(){


  prompt_obracket="${bold_cyan}[${normal}"
  prompt_cbracket="${bold_cyan}]${normal}"

  SCM_THEME_PROMPT_DIRTY=" ${red}✗${normal}"
  SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓${normal}"
  SCM_THEME_PROMPT_PREFIX="${prompt_obracket}"
  SCM_THEME_PROMPT_SUFFIX="${prompt_cbracket}"
  SCM_THEME_BRANCH_PREFIX="$bold_blue"

  SCM_GIT_UNTRACKED_CHAR="${red}?:${normal}"
  SCM_GIT_UNSTAGED_CHAR="${yellow}U:${normal}"
  SCM_GIT_STAGED_CHAR="${green}S:${normal}"

  prompt_home="${prompt_obracket}$green\h${prompt_cbracket}"
  prompt_user="${prompt_obracket}$bold_green\u${prompt_cbracket}"
  prompt_cpwd="${prompt_obracket} $purple\w ${prompt_cbracket}"
  prompt_iline="└─▪ "
  prompt_scm="$(scm_prompt_info)"

  prompt_scmline

  PS1="┌─${prompt_user}${prompt_home}${prompt_cpwd}${prompt_scm_line}\n$prompt_iline"
}

function prompt_scmline(){
  scm
  scm_prompt_char
  if [ -n "$prompt_scm" ]; then
    prompt_scm_line_pre=${prompt_obracket}${SCM_CHAR}${prompt_cbracket}
    prompt_scm_line="\n${prompt_scm_line_pre}${prompt_scm}"
  else
    prompt_scm_line=""
  fi
}

PROMPT_COMMAND='prompt'
