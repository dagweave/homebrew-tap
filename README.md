# Dagweave Homebrew tap

    brew install dagweave/tap/dagweave

Dagweave Local runs Argo Workflows locally. You run the same
commands you would with the argo CLI, typing `dagweave` where you would type
`argo`. It works on macOS and Linux, on Intel and ARM.

`brew upgrade dagweave` fetches the newest release. Every Dagweave Local
release rewrites the formula, so it always points at the current binaries and
checks each one against its published sha256.

Other ways to install, and what to do if something blocks the download:
https://docs.dagweave.com/local/install/

Bugs and questions go to the issues on
[dagweave/local-releases](https://github.com/dagweave/local-releases/issues).

## Licence

The formula in this repository is MIT licensed: see [LICENSE](LICENSE). The
Dagweave Local binary it installs is not. It is proprietary and free to use,
with no limit on what it runs.
