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

PKGS=$(
  cat <<-'EOF'
  neovim
  htop
EOF
)

echo "Installing: "
echo "${PKGS[@]}"
apt install -y "${PKGS[@]}"
