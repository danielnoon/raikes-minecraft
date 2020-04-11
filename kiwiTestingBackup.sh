#!/bin/bash
if [ "$(whoami)" != "delpinothedragon1" ]; then 
        sudo su delpinothedragon1 -c "cd /etc/mc"
        sudo su delpinothedragon1 -c "supervisorctl stop minecraft"
        sudo su delpinothedragon1 -c "git add ."
        sudo su delpinothedragon1 -c "git commit -am 'kiwiTestingBackup'"
        sudo su delpinothedragon1 -c "git pull"
        sudo su delpinothedragon1 -c "git push"
        sudo su delpinothedragon1 -c "supervisorctl start minecraft"
else
        cd /etc/mc
        supervisorctl stop minecraft
        git add .
        git commit -am "kiwiTestingBackup"
        git pull
        git push
        supervisorctl start minecraft
fi
