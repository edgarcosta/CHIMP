set +e
git pull --recurse-submodules=no # just update CHIMP
git submodule update --recursive --init --remote --checkout --jobs=10 # updates current repos
set -e
