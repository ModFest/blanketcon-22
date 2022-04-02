#!/usr/bin/env bash
micro pack.toml
packwiz update -a
git add :
packwiz refresh
git commit -a
