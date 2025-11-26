#!/bin/env bash
E_CWD="$(pwd)"
SCRIPTS_DIR="$E_CWD/scripts"
PYTHON_CMD="python3 -m http.server --directory $E_CWD 80"

# If python server is already running, kill it

echo "Checking for existing Python server..."

if pgrep -f "python3 -m http.server --directory" >/dev/null; then
  echo "Killing existing Python server..."
  pkill -f "python3 -m http.server --directory"
  if [ $? -eq 0 ]; then
    echo "Existing Python server killed."
  else
    echo "Failed to kill existing Python server."
    exit 1
  fi
  sleep 2
fi

command -v python3 >/dev/null 2>&1 || {
  echo "Python3 is not installed. Please install Python3 to run the server."
  exit 1
}

sudo bash -c "${PYTHON_CMD}" &

if [ $? -eq 0 ]; then
  echo "Python server is running at http://localhost:80"
else
  echo "Failed to start the Python server."
fi
