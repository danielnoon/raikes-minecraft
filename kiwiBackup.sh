cd /etc/mc
supervisorctl stop minecraft
git add .
git commit -am "kiwi backup"
git pull https master
git push https master
supervisorctl start minecraft
