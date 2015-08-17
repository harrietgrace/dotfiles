alias gd="git diff"
alias gc="git clone"
alias ga="git add"
alias gbd="git branch -D"
alias gs="git status"
alias gst="git status"
alias gss="git status -s"
alias gca="git commit -a -m"
alias gpt="git push --tags"
alias gp="git push"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gm="git merge"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias docs="rm -fr /tmp/docs && cp -fr docs /tmp/docs && git checkout gh-pages && cp -fr /tmp/docs/* ."
alias gpom="git pull origin master"
alias gpum="git pull upstream master"
alias gcd='cd "`git rev-parse --show-toplevel`"'
alias gdmb='git delete-merged-branches'
alias gpr='git pull --rebase'
alias gprm='git pull --rebase origin master'
alias glm='git fetch; git checkout master; git pull origin master'

# default

export USER_DEFAULT=harrietgrace

#
# Checkout <pull-request>
#

gcopr(){
  git fetch origin pull/$1/head:pr-$1
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

#
# Tab autocompletion for all the things
#

if [ ! -f ~/.git-completion.bash ]; then
	curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

. ~/.git-completion.bash