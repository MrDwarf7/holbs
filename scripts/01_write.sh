#!/bin/env bash
CWD="$(pwd)"
source "$CWD/00_envs.sh"

echo "$INDEX_CONTENT" >"$INDEX"
echo "$ABOUT_CONTENT" >"$ABOUT"
echo "$CSS_CONTENT" >"$CSS"
