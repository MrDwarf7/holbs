#!/bin/env bash

# E_CWD="$(pwd)"
# DIR="$HOME/my_first_webpage"
DIR="$E_CWD/my_first_webpage"
PAGES="$DIR/00_pages.sh"

# individual pages/files
INDEX="$DIR/index.html"
ABOUT="$DIR/about.html"
CSS="$DIR/styles.css"

PYTHON_CMD="python3 -m http.server --directory $DIR 80"

export E_CWD DIR PAGES INDEX ABOUT CSS PYTHON_CMD
