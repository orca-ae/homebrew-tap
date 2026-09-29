# Orca Homebrew Tap

Homebrew formulae for [Orca Agent Engine](https://runorca.ai).

## Install ork

[`ork`](https://github.com/orca-ae/orca-cli) is the command-line client for Orca
Agent Engine. With [Homebrew](https://brew.sh) installed, run:

```sh
brew install orca-ae/tap/ork
```

Alternatively, add the tap first:

```sh
brew tap orca-ae/tap
brew install ork
```

The formula supports macOS and Linux on ARM64 and x86_64, and installs shell
completions for Bash, Zsh, and Fish.

## Get started

Verify the installation and explore the available commands:

```sh
ork --version
ork --help
```

See the [CLI documentation](https://github.com/orca-ae/orca-cli#readme) for
configuration, authentication, and usage examples.

## Upgrade

```sh
brew update
brew upgrade orca-ae/tap/ork
```

## Uninstall

```sh
brew uninstall ork
```

If you no longer need this tap, remove it:

```sh
brew untap orca-ae/tap
```
