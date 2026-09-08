# homebrew-vchewing

Homebrew tap for [vChewing (唯音輸入法)](https://vchewing.github.io/) — a sandboxed Phonabet-based Mandarin input method for macOS.

## Install

```sh
brew tap SiongSng/vchewing
brew install --cask vchewing
```

Or in one line:

```sh
brew install --cask SiongSng/vchewing/vchewing
```

After installation, enable vChewing in **System Settings → Keyboard → Input Sources**.

## Upgrade

```sh
brew upgrade --cask vchewing
```

## Uninstall

```sh
brew uninstall --cask vchewing
```

## Maintenance

A scheduled GitHub Actions workflow checks the upstream
[vChewing/vChewing-macOS](https://github.com/vChewing/vChewing-macOS) releases twice a week and
bumps the cask's `version` and `sha256` automatically.
