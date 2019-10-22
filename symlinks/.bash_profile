source ~/dev/harriet/dotfiles/scripts/general.sh
source ~/dev/harriet/dotfiles/scripts/npm.sh
source ~/dev/harriet/dotfiles/scripts/git.sh
source ~/dev/harriet/dotfiles/scripts/buildkite.sh

eval "$(rbenv init -)"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
