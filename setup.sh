#!/bin/env bash
E_CWD="$(pwd)"

aliases=$(
  cat <<-'EOF'
alias l="ls -lah --color=always"
alias ls="ls -lah --color=always"
alias cls="clear"
alias ca="clear; ls -lah --color=always"
alias vim="nvim"
alias gpl="git pull"
EOF
)

source "${HOME}/.bashrc"

echo "${aliases}" >>"${HOME}/.bashrc"
echo "Aliases added to .bashrc"

mapfile -t PKGS < <(
  cat <<-'EOF'
neovim
htop
EOF
)

echo "Installing: "
echo "${PKGS[@]}"

# if we don't have any of the packages, install them
# first check if the package is already installed

if ! dpkg -s "${PKGS[@]}" &>/dev/null; then
  echo "Some packages are not installed. Installing..."
  apt install -y "${PKGS[@]}"
else
  echo "All packages are already installed."
  exit 0
fi
