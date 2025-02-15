#!/bin/sh

git config --global user.email "<username>@host"
git config --global user.name "FIRST LAST NAME"
git config --global core.editor vim
echo -e ".idea\n.buildpath\n.project\n.settings\n.vagrant/machines\n.DS_Store\nnbproject\n.thumbs" > $HOME/.gitignore
git config --global core.excludesfile $HOME/.gitignore
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
git config --global --add --bool push.autoSetupRemote true
