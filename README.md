# Dotfiles

Personal dotfiles for macOS, managed using **GNU Stow**.

This repository contains configuration for:
- Zsh
- Ghostty
- Neovim
- Tmux
- Oh My Posh
- Yazi
- Vim

---

## Prerequisites

Before applying dotfiles, install all required packages using the included **Brewfile**:

```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all dependencies from the Brewfile
brew bundle install
```

---

## Setup

After installing the prerequisites, use **GNU Stow** to symlink the configurations to your home directory. 

From the root of this repository, run:

```bash
stow zsh ghostty tmux yazi nvim ohmyposh vim
```

---

## Structure

Each top-level directory is a **stow package**:

```text
dotfiles/
├── Brewfile              # List of all Homebrew formulae, casks, and VS Code extensions
├── zsh/
│   └── .zshrc
├── ghostty/
│   └── .config/ghostty/config
├── nvim/
│   └── .config/nvim/init.lua
├── ohmyposh/
│   └── .config/oh-my-posh/
├── tmux/
│   └── .tmux.conf
├── vim/
│   └── .vimrc
└── yazi/
    └── .config/yazi/
```

