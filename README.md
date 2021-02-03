<h1 align="center">
  <a href="https://github.com/josephgattuso/dotfiles">
    <img src="logo.png"/> 
    <br />
    .dotfiles
  </a>
</h1>

<p align="center">
  <a
    href="https://github.com/josephgattuso/dotfiles/blob/master/LICENSE"
  >
    <img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square" />
  </a>

  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square" />
  <a
    target="_blank"
    href="https://twitter.com/intent/follow?screen_name=joeetuso"
  >
    <img
      src="https://img.shields.io/twitter/follow/joeetuso.svg?style=flat-square&label=@joeetuso"
    />
  </a>
  
</p>

## 🎯 Getting started

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:josephgattuso/dotfiles.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/josephgattuso/dotfiles.git ~/.dotfiles
```

3. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```

### Run the install scripts below:

```sh
source setup-brew.sh
source setup-macos.sh
```

## ☑ Todos

- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations.
- Organise these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot).
- Revisit the list in [`.zshrc`](.zshrc) to customise the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Create a [bootable USB installer for macOS](https://support.apple.com/en-us/HT201372).
- Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
- Find inspiration and examples in other Doffiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).
- Generate a new [GPG key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key) if you don't have an existing GPG key.
- Tell Git about your [signing key](https://docs.github.com/en/github/authenticating-to-github/telling-git-about-your-signing-key) to sign local commits.

## 🧾 License

[MIT](https://github.com/josephgattuso/dotfiles/blob/master/LICENSE)
