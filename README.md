# Public OpenTable Homebrew Formulae

This repository is OpenTable's public [Homebrew] [tap] provided as a convenience to install various tools built at OpenTable.

[tap]: https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md
[Homebrew]: https://brew.sh

## Usage

If you already know all there is to know about Homebrew taps, you probably don't
need to read any more. For those who aren't familiar, please read on.

### Requirements

Before using this tap, you need to [install Homebrew].
Then you should run 'brew update' to make sure you have the latest version.

[install Homebrew]: https://brew.sh

### Add this tap to receive updates

If you're interested in these formula, you should use 'brew tap' to
start receiving updates for them via 'brew update':

    $ brew tap opentable/public

If you no longer want to use this tap:

    $ brew untap opentable/public

### Installing formula

Once tapped you can install the formula by name
(i.e. the name of the .rb files in the root of this repo, minus the 'rb suffix),
e.g.:

    $ brew install opentable/public/sous

Note that it is possible to install formula omitting the 'opentable/public' part,
but if your tap is misconfigured and the name is ambiguous, you will end up with the
wrong software installed, so this is not recommended.

The latter (fully qualified formula name) is recommended.

## Maintenance

## Updating the version of Sous

To update which version of Sous is installed by the sous.rb formula,
use the following command:

```shell
./scripts/update_sous.rb $VERSION
```

Replacing $VERSION with whatever version you want. This will update the sous.rb formula,
which you'll then want to commit and push.

## Migrating formula 

Should these formulae ever make it to the official homebrew-core repo,
they will need to be [migrated] away from this tap.

[migrated]: https://github.com/Homebrew/brew/blob/master/docs/Migrating-A-Formula-To-A-Tap.md
