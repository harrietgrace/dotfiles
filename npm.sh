alias ni="npm install"
alias nrd="npm run dev"
alias nrb="npm run build"

#
# Get the npm version of a <package>
#

version() {
  npm info $1 version
}