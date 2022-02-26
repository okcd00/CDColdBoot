if [ -n "$1" ]; then
  if [[ ${1} = "douban" ]]; then
    pip config set global.index-url http://pypi.douban.com/simple/ 
  elif [[ ${1} = "ustc" ]]; then
    pip config set global.index-url https://pypi.mirrors.ustc.edu.cn/simple/
  elif [[ ${1} = "aliyun" ]]; then
    pip config set global.index-url http://mirrors.aliyun.com/pypi/simple/ 
  elif [[ ${1} = "tsinghua" ]]; then
    pip config set global.index-url http://pypi.tuna.tsinghua.edu.cn/simple/
  else
    echo "Invalid arg: should be one from [douban|ustc|aliyun]"
  fi
else
    pip config set global.index-url https://pypi.mirrors.ustc.edu.cn/simple/
fi
