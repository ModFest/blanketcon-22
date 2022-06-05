#!/usr/bin/env bash
micro pack.toml
if [ "$1" == "skip" ] || [ "$2" == "skip" ]; then
  echo 'Skipping update'
else
  packwiz update -a
fi
git add :
packwiz refresh

# The Runelic file must stay the same no matter what. If it got accidentally updated, revert it back.
echo "name = \"Runelic\"
filename = \"Runelic-Fabric-1.18.2-11.0.1.jar\"
side = \"both\"

[download]
hash-format = \"sha1\"
hash = \"d0c3d625bd450f4e58f8c7a5bf44d05da15690b4\"
mode = \"metadata:curseforge\"

[update]
[update.curseforge]
file-id = 3683667
project-id = 393149" > mods/runelic.pw.toml

git commit -a
if [ "$1" == "push" ] || [ "$2" == "push" ]; then
  git push
fi
