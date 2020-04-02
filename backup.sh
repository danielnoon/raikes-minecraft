cd /etc/mc
supervisorctl stop minecraft
git add .
git commit -am "backup"
git push
supervisorctl start minecraft
