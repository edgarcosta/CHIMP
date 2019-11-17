# PIMP: Pimp Installs Magma Packages

- Can keep up with all the Magma packages on your system?
- and their dependencies?
- Tired of having of managing them one by one?
Then look no further, PIMP will "manage" all your Magma packages for you.

# Spec

Sadly you still to attach each spec individually to your session.


# Updating

You can fetch the most recent version of all packages by doing:
```
git submodule update --init --recursive
git submodule foreach --recursive git fetch
git submodule foreach git pull --ff-only origin
```
and considering doing a pull request afterwards.
