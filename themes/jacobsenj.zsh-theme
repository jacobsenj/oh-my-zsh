typeset -A host_repr

# translate hostnames into shortened, colorcoded strings
host_repr=('jeja-mac.local' "%{$fg_bold[blue]%}J" 'jeja-mac16.local' "%{$fg_bold[green]%}J" 'jeja-mac.fritz.box' "%{$fg_bold[blue]%}J@HOME:" 'jeja-mac16.fritz.box' "%{$fg_bold[green]%}J@HOME:")

# user part, color coded by privileges
local user="%(!.%{$fg[blue]%}.%{$fg[blue]%})%n%{$reset_color%}"

# Hostname part.  compressed and colorcoded per host_repr array
# if not found, regular hostname in default color
local host="%{$fg[yellow]%}@${host_repr[$(hostname)]:-$(hostname)}%{$reset_color%}"

local currentpath="%{$fg_bold[green]%}%p %{$fg[cyan]%}%~"

PROMPT='${user}${host} %{$fg_bold[red]%}➜ ${currentpath} %{$fg_bold[blue]%}$(git_prompt_info)$(svn_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_THEME_SVN_PROMPT_PREFIX="svn:(%{$fg[green]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[blue]%})"

