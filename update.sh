set +e
git pull --recurse-submodules=no # just update CHIMP
git submodule update --recursive --remote --jobs=10 # updates current repos
set -e
