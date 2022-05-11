#!/usr/bin/env bash
micro pack.toml
if [ -z "$1" ]; then
  packwiz update -a
else
  echo 'Arg supplied, skipping update'
fi
git add :
packwiz refresh
git commit -a
