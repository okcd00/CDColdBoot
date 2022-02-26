if [ -n "$1" ]; then
  if [ ${1} = "tuna" ]; then
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
    conda config --set show_channel_urls yes
  elif [ ${1} = "tsinghua" ]; then
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
    conda config --set show_channel_urls yes
  elif [ ${1} = "ustc" ]; then
    conda config --add channels https://mirrors.ustc.edu.cn/anaconda/pkgs/free/
    conda config --add channels https://mirrors.ustc.edu.cn/anaconda/pkgs/main/
    conda config --set show_channel_urls yes
  elif [ ${1} = "none" ]; then
    conda config --remove-key channels
    conda config --set show_channel_urls no
  else
    echo "Invalid arg: should be one from [tuna|ustc|tsinghua|none]"
  fi
else
    conda config --add channels https://mirrors.ustc.edu.cn/anaconda/pkgs/free/
    conda config --add channels https://mirrors.ustc.edu.cn/anaconda/pkgs/main/
    conda config --set show_channel_urls yes
fi
