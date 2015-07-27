# utils
alias sum="awk '{ sum += \$1 } END { print sum }'"
alias mean="awk '{ sum += \$1 } END { print sum / NR }'"

# Random uid (e.g. password) generator
alias uid='openssl rand -base64 8 |md5 |head -c20;echo'

# default

export GO_DEFAULT=harrietgrace

#
# Go to a <repo> in ~/dev
#

goto() {
  if [[ "$1" == */* ]]; then
    cd ~/Documents/code/$1 &> /Documents/null || clone $1
  else
    cd ~/Documents/code/$GO_DEFAULT/$1 &> /Documents/null || clone $GO_DEFAULT/$1
  fi
}

#
# Completion for goto()
#

_goto()
{
  cur=${COMP_WORDS[COMP_CWORD]}
  if [[ "$cur" =~ ^([^/]+)/(.+)$ ]]; then
    use=`tree -f -L 1 ~/Documents/code/harrietgrace/ | grep ${BASH_REMATCH[2]} | tr / '\t' | awk '{print $(NF-1),$NF}' | tr ' ' /`
  else
    use=`ls ~/Documents/code/$GO_DEFAULT/ | grep $cur`
  fi
  COMPREPLY=(`compgen -W "$use" -- $cur`)
}

complete -o default -o nospace -F _goto goto