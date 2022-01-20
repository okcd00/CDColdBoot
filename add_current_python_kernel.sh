if [ -n "$1" ]; then
    `which python` -m ipykernel install --name $1
else
    `which python` -m ipykernel install
fi
