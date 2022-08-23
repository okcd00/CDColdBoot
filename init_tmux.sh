# prepare tmux env
cd ~
git clone https://gitee.com/okcd00/tmux.git
mv ./tmux ./.tmux
mkdir ./.tmux/plugins
git clone https://gitee.com/okcd00/tpm.git ~/.tmux/plugins/tpm
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# add `tm` alias in ~/.bashrc
alias_str="alias tm='tmux a -t chendian'"
if 
grep -q "alias tm" ~/.bashrc
then
echo "alias ${alias_str} exists"
else
# sed `/匹配字段/i加上想要插入到匹配字段前一行的内容` 文件名
# sed `/匹配字段/a加上想要插入到匹配字段后一行的内容` 文件名
sed -i "/alias l='ls -CF'/a\${alias_str}" ~/.bashrc
echo "append ${alias_str} in bashrc"
fi
