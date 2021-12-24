git clone https://gitee.com/okcd00/tmux 
mv ./tmux ./.tmux
mkdir ./.tmux/plugins
git clone https://gitee.com/okcd00/tpm ~/.tmux/plugins/tpm
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
