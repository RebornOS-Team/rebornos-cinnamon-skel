# RebornOS Cinnamon Skeleton

Skeleton for `/home`, used for configuring RebornOS Cinnamon

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
4. Transfer the contents of the above file to `scripts/keyfiles/settings.ini` in your project directory.

## OR 2. Modify the Keyfile directly

Edit the keyfile `scripts/keyfiles/settings.ini` in your project directory.

## 3. Build the Package

```sh
sh scripts/build_package.sh
```
