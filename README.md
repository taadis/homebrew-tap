# Taadis Homebrew Tap

## How do I install these formulae?

`brew install taadis/tap/<formula>`

Or `brew tap taadis/tap` and then `brew install <formula>`.

## How do I update this formula to a new version?

To update, don't just merge into the main branch, but create a PR. The PR CI will build bottles and store them as build artifacts.

Once the PR passes CI, label it with the "pr-pull" label.

The labeling will trigger a Github Action to add the bottles from the artifacts to the Formula and merge the PR into the main branch.

## Formulae

- redis-cli

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
