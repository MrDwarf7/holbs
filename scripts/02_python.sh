#!/bin/env bash
CWD="$(pwd)"
source "$CWD/00_envs.sh"

command -v python3 >/dev/null 2>&1 || {
  echo "Python3 is not installed. Please install Python3 to run the server."
  exit 1
}

cmd="${PYTHON_CMD}"
sudo bash -c "${cmd}" &
