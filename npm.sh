alias ni="npm install"

#
# Get the npm version of a <package>
#

version() {
  npm info $1 version
}