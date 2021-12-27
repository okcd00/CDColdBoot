# my default env: (chendian) with python=3.7.10
if [ -n "$1" ]; then
    conda create -n $1 python=3.7.10
else
    conda create -n chendian python=3.7.10
fi

# add `sa` alias in ~/.bashrc
alias_str="alias sa='source activate'"
if 
grep -q "alias sa" ~/.bashrc
then
echo "alias ${alias_str} exists"
else
# sed `/匹配字段/i加上想要插入到匹配字段前一行的内容` 文件名
# sed `/匹配字段/a加上想要插入到匹配字段后一行的内容` 文件名
sed -i "/alias l='ls -CF'/a\${alias_str}" ~/.bashrc
echo "append ${alias_str} in bashrc"
fi
