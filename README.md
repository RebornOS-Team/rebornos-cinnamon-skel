# RebornOS Cinnamon Skeleton

Skeleton for `/home`, used for configuring **RebornOS Cinnamon**.

## 1. Clone this repository

In order to download the source code to your local computer for testing, or for development, you can clone from the remote repository using either SSH, or HTTPS. Below are instructions on how to do so using GitHub hosted code as remote.

### HTTPS

```bash
git clone https://github.com/rebornos-team/rebornos-cinnamon-skel.git

cd rebornos-cinnamon-skel
```

### SSH

```bash
git clone git@github.com:rebornos-team/rebornos-cinnamon-skel.git

cd rebornos-cinnamon-skel
```

## 2. Copy Settings to Keyfile

1. On a model target system (like a Cinnamon VM), modify the settings you want to change.
2. Dump the system settings to a temporary keyfile: `dconf dump / > /tmp/settings.ini`
3. In the above file, keep only the settings you want the skel config to have, and remove everything else. Save it.
4. Transfer the contents of the above file to the [keyfile](src/keyfiles/settings.ini) in your project directory.

## AND/OR 2. Modify the Keyfile directly

Edit the [keyfile](src/keyfiles/settings.ini) in your project directory.

## 3. Packaging

Change to the project directory (`cd rebornos-cinnamon-skel`) and run any of the below scripts:
- `sh packaging/setup.sh <MODE>`: Builds and installs a package
- `sh packaging/build-package.sh <MODE>`: Just builds a package without installing it locally
- `sh packaging/install-package.sh <MODE>`: Just installs a package locally, except if no built package is detected, a package is built.

- where `<MODE>` can be one of the below
     1. `local`: Selects *rebornos-cinnamon-skel-local* from the local project that you have cloned already.
     2. `git`: Selects *rebornos-cinnamon-skel-git* from the latest git commit.
     3. `stable`: Selects *rebornos-cinnamon-skel* from the git tag corresponding to the [`pkgver` specified in the PKGBUILD](https://github.com/RebornOS-Team/rebornos-cinnamon-skel/blob/main/packaging/rebornos-cinnamon-skel/PKGBUILD#L5). If `pkgver=1.1.1`, then the git tag `v1.1.1` is used for packaging. 
     
> **Note**: Any additional parameters passed to the above scripts are automatically sent to `makepkg` or `pacman` (whichever is applicable).
