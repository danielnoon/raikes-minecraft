#!/bin/bash
if [ "$(whoami)" != "delpinothedragon1" ]; then
        su delpinothedragon1
fi
cd /etc/mc
supervisorctl stop minecraft
git add .
git commit -am "backup"
git pull
git push
supervisorctl start minecraft
