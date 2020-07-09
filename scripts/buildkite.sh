# yarn the submodules
alias ysite="cd ~/dev/buildkite/buildkite/vendor/site && yarn && cd ~/dev/buildkite/buildkite"
alias yfrontend="cd ~/dev/buildkite/buildkite/vendor/frontend && yarn && cd ~/dev/buildkite/buildkite"
alias ysubs="ysite && yfrontend"

# run migrations
alias migr="bin/rails db:migrate RAILS_ENV=development"

# run all the things
alias latest="gco db/structure.sql && gpom && gf && gsubs && bundle && ysubs && migr"

# run the docs stuff (assumes you're in the docs dir already)
alias tests="bundle && bundle exec rspec"
alias launch="echo http://localhost:3000/ && bin/rails server"
alias lint="docker run --rm --volume $PWD:/workspace --workdir /workspace jdkato/vale --glob='!*.DS_Store' pages/"

# go to things
alias docs="cd ~/dev/buildkite/buildkite/vendor/docs"
alias bk="cd ~/dev/buildkite/buildkite"