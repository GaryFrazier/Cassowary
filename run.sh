# exit when any command fails
set -e

cmake .
make
bin/game