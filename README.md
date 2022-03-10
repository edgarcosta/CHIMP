# CHIMP: Chimp Hopefully Installs Magma Packages

- Cannot keep up with all the Magma packages on your system?
- and their dependencies?
- Tired of having to manage and include them one by one?

Then look no further, CHIMP will manage and include all ~~your~~ Magma packages for you.

# Installing

## Clone this repository
Move to the directory where you would like to install CHIMP and clone the repository by doing
```
git clone --recurse-submodules -j8 https://github.com/edgarcosta/CHIMP.git
```
or if you have a GitHub account
```
git clone --recurse-submodules -j8 git@github.com:edgarcosta/CHIMP.git
```

Old versions might not support the `-j8` option, if that is your case, just ommit it.

## Attach the spec file

You only need to attach the `CHIMP.spec` file, by doing
```
> AttachSpec("<replace with the installation directory>/CHIMP/CHIMP.spec");
```

If you want this file to be loaded every time you may add this command to your `.magmarc` or export `MAGMA_USER_SPEC` on your shell environment, for example, by adding the following line to `.bashrc` (or `.profile`):
```
export MAGMA_USER_SPEC="<replace with the installation directory>/CHIMP/CHIMP.spec"
```


# Updating

You can fetch the most recent version of all packages by doing:
```
git pull && git submodule update --remote --jobs=10
```
and consider doing a pull request afterwards.

# Notes

The packages `RiemannSurfaces`, `hcperiods`, `echidna` and `ModFrmGL2` are disabled in `CHIMP.spec`. See below for more details.

- The packages `RiemannSurfaces` and `hcperiods` have been incorporated into `Magma` since version 2.25. If you are running an older version, please enable these, uncommenting the appropriate lines `#+spec` -> `+spec`.
- The package `echidna` defines an intrinsic `MaximalOrder` that is broken at the moment and since it overwrites the `Magma` intrinsic, we disabled the package.
- The package `ModFrmGL2` overwrites several `Magma` intrinsics, and given what happened with `echidna` we preemptively disabled it.



