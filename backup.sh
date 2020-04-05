cd /etc/mc
supervisorctl stop minecraft
git add .
git commit -am "backup"
git pull
git push
supervisorctl start minecraft
