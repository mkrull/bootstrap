#!/usr/bin/env bash

SCM_THEME_PROMPT_PREFIX="${cyan}${green}"
SCM_THEME_PROMPT_SUFFIX="${cyan}"
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"
VIRTUALENV_THEME_PROMPT_PREFIX="<"
VIRTUALENV_THEME_PROMPT_SUFFIX=">"

prompt() {
    PS1="${cyan}\W${reset_color} $(scm_prompt_info)${reset_color} ${cyan}$(virtualenv_prompt)${reset_color}
${blue}>${reset_color} "
}

safe_append_prompt_command prompt
