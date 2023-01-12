version="cuda-10.2"
export PATH="/usr/local/$version/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/$version/lib64:/usr/local/$version/extras/CUPTI/lib64:/usr/local/nccl/lib:/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH"
export CUDA_HOME="/usr/local/$version/"
