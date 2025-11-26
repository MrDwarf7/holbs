#!/bin/env bash
E_CWD="$(pwd)"

aliases=$(
  cat <<-'EOF'
  alias l="ls -lah --color=always"
  alias ls="ls -lah --color=always"
  alias cls="clear"
  alias ca="clear; ls -lah --color=always"
  alias vim="nvim"
EOF
)

echo "${aliases}" >>"${HOME}/.bashrc"
echo "Aliases added to .bashrc"

apt install -y neovim htop
