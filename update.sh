#!/usr/bin/env bash
micro pack.toml
if [ "$1" = *"skip"* ]; then
  packwiz update -a
else
  echo 'Arg supplied, skipping update'
fi
git add :
packwiz refresh
git commit -a
if [ "$1" = *"push"* ]; then
  git push
fi
