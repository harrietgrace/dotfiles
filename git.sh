#
# Tab autocompletion for all the things
#

if [ ! -f ~/.git-completion.bash ]; then
	curl https://github.com/git/git/blob/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

. ~/.git-completion.bash

#
# Aliases
#

alias gd="git diff"
__git_complete gd _git_diff
alias ga="git add"
__git_complete ga _git_add
alias gf="git fetch"
__git_complete gf _git_fetch
alias gbd="git branch -D"
__git_complete gbd _git_branch
alias gs="git status"
alias gss="git status -s"
alias gst="git stash"
alias gc="git commit"
alias gcm="git commit -m"
alias gpo="git push origin"
alias grh="git reset --hard"
__git_complete grh _git_reset --hard
alias gb="git branch"
alias gcob="git checkout -b"
alias gm="git merge"
alias gco="git checkout"
__git_complete gco _git_checkout
alias gba="git branch -a"
alias gl="git log"
alias glp="git log --date=format:'%d-%m-%y' --pretty='format:%Cgreen%h%Creset %C(yellow)%ad%Creset %an - %s' --graph"
alias gp="git pull"
__git_complete gp _git_pull
alias gpom="git pull origin master"
alias gfcp='git fetch; git checkout master; git pull origin master'
alias gri="git rebase -i"
alias gsubs="git submodule update --init --recursive"
#alias gcd='cd "`git rev-parse --show-toplevel`"'
#alias gpr='git pull --rebase'
#alias gprm='git pull --rebase origin master'

alias dmb="git checkout --quiet master && git branch --merged | grep --invert-match '\\*' | xargs -n 1 git branch --delete; git checkout --quiet @{-1}; "


# default

export USER_DEFAULT=harrietgrace

#
# Checkout <pull-request>
#

# Add some handing for bitbucket vs github repos

gcopr(){
  git fetch origin pull/$1/head\:pr-$1
  git checkout pr-$1
}

#
# Open the repo in the current directory on github
#

gho() {
  repo=$(git remote -v)
  re="github.com/([^/]+/[^[:space:]]+)(.git)"
  if [[ $repo =~ $re ]]; then open "https://github.com/${BASH_REMATCH[1]}"; fi
}
