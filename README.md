# homebrew-vchewing

Unofficial Homebrew tap for [vChewing (唯音輸入法)](https://vchewing.github.io/), a sandboxed
Phonabet-based Mandarin input method for macOS.

Not affiliated with the vChewing project. The cask downloads the signed installer straight from
the upstream [GitHub releases](https://github.com/vChewing/vChewing-macOS/releases); nothing is
re-hosted here.

## Install

```sh
brew install --cask SiongSng/vchewing/vchewing
```

Then enable vChewing in System Settings > Keyboard > Input Sources.

## Update and remove

```sh
brew upgrade --cask vchewing
brew uninstall --cask vchewing
```

## Updating the cask

A GitHub Actions workflow checks upstream releases twice a week and bumps `version` and `sha256`.
Run it manually from the Actions tab if you need it sooner.
