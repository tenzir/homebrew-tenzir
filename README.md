# 🍺 Tenzir Homebrew tap

This tap lets you install Tenzir on Apple Silicon macOS with Homebrew.

## 🚀 Install Tenzir

Tap the repository and install the cask:

```sh
brew tap tenzir/homebrew-tenzir
brew install --cask tenzir
```

You can also install without tapping first:

```sh
brew install --cask tenzir/homebrew-tenzir/tenzir
```

## 🧹 Uninstall Tenzir

Remove the cask with Homebrew:

```sh
brew uninstall --cask tenzir
```

The bootstrap cask currently uninstalls the existing package identifier
`com.Tenzir.Tenzir.Runtime`. A companion change in `tenzir/tenzir` will switch
future releases to the lowercase identifier `com.tenzir.tenzir.runtime`.

## 🧭 Architecture support

This tap currently supports Apple Silicon macOS only. Intel macOS support is a
follow-up once Tenzir ships an x86_64 macOS package.

## 🤖 Release updates

`tenzir/tenzir` owns release automation for this tap. The automated release job
updates only the cask `version`, `sha256`, `url`, and `uninstall pkgutil`
fields.
