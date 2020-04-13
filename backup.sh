#!/bin/bash
cd /etc/mc
if [ "$(whoami)" == "root" ]; then
        su -c "bash /etc/mc/backup.sh" delpinothedragon1
	exit
fi
supervisorctl stop minecraft
git add .
git commit -am "backup"
git pull
git push

sudo chown -R delpinothedragon1 .

git lfs prune
supervisorctl start minecraft
