#!/usr/bin/env bash
micro pack.toml
if [ "$1" == "skip" ] || [ "$2" == "skip" ]; then
  echo 'Skipping update'
else
  packwiz update -a
fi
git add :
packwiz refresh
git commit -a
if [ "$1" == "push" ] || [ "$2" == "push" ]; then
  git push
fi
