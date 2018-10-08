# yarn the submodules
alias ysite="cd ~/dev/buildkite/buildkite/vendor/site && yarn && cd ~/dev/buildkite/buildkite"
alias yfrontend="cd ~/dev/buildkite/buildkite/vendor/frontend && yarn && cd ~/dev/buildkite/buildkite"
alias ysubs="ysite && yfrontend"
# run migrations
alias migr="bin/rails db:migrate RAILS_ENV=development"
