# utils
alias sum="awk '{ sum += \$1 } END { print sum }'"
alias mean="awk '{ sum += \$1 } END { print sum / NR }'"

# Go to a <repo>
goto() {
  if [[ "$1" == */* ]]; then
    cd ~/dev/buildkite/$1 &> /dev/null || clone $1
  fi
}

# Completion for goto()
_goto()
{
  cur=${COMP_WORDS[COMP_CWORD]}
  if [[ "$cur" =~ ^([^/]+)/(.+)$ ]]; then
    use=`tree -f -L 1 ~/Documents/code/ | grep ${BASH_REMATCH[2]} | tr / '\t' | awk '{print $(NF-1),$NF}' | tr ' ' /`
  else
    use=`ls ~/Documents/code/ | grep $cur`
  fi
  COMPREPLY=(`compgen -W "$use" -- $cur`)
}

complete -o default -o nospace -F _goto goto


# Create a dir and cd to it
function mk() {
  mkdir -p "$@" && cd "$@"
}

#
function dev() {
  cd ~/dev
}

# Don't save stuff to bash history if you start with a space
export HISTCONTROL=ignorespace


# Style for terminal prompt
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
PURPLE="\[\033[0;35m\]"
BLUE="\[\033[0;34m\]"
CYAN="\[\033[0;36m\]"
NO_COLOR="\[\033[0m\]"

PS1="$PURPLE\u$NO_COLOR:\W$CYAN\$(parse_git_branch)$NO_COLOR\$ "