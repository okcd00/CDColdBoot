if [ -d "/home/chendian/my_conda_envs/" ]; then
    echo "Dir my_conda_env exists."
else
    mkdir ~/my_conda_envs
fi

if [ -n "$1" ]; then
    conda create --prefix="~/my_conda_envs/$1" python=3.7.10
else
    conda create --prefix="~/my_conda_envs/chendian" python=3.7.10
fi
