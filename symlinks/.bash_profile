source ~/dev/harriet/dotfiles/scripts/general.sh
source ~/dev/harriet/dotfiles/scripts/npm.sh
source ~/dev/harriet/dotfiles/scripts/git.sh
source ~/dev/harriet/dotfiles/scripts/buildkite.sh

eval "$(rbenv init -)"
export PATH="/usr/local/opt/postgresql@13/bin:$HOME/go/bin:$PATH"

# ruby-build installs a non-Homebrew OpenSSL for each
# Ruby version installed and these are never upgraded.
#
# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) 
# add the following to your /Users/harriet/.bash_profile:
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
