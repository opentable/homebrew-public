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


### Installing Software

Install the formula by using `brew install opentable/public/<formula>`
Where `<formula>` is the name of one of the .rb files in the root of this repo,
minus the 'rb suffix. e.g.:

    $ brew install opentable/public/sous

This command will install [Sous] and set up your local `opentable/public` tap
so that you receive updates in future.

_Note that it is possible to install formula omitting the 'opentable/public' part,
but if your tap is misconfigured and the name is ambiguous, you will end up with the
wrong software installed, so this is not recommended._

[Sous]: https://github.com/opentable/sous

### Uninstalling Software

Το uninstall software installed by this tap, use
`brew uninstall opentable/public/<formula>` e.g.:

    $ brew uninstall opentable/public/sous

If you additionally no longer want to receive updates from this tap:

    $ brew untap opentable/public

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
