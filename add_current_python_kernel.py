if [ -n "$1" ]; then
    sudo `which python` -m ipykernel install --name $1
else
    sudo `which python` -m ipykernel install
fi
