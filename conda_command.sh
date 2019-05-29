# in case path error in make process for cmake project
export ORG_PATH="$PATH"

alias open_conda="export PATH=\"$ORG_PATH:~/anaconda2/bin\""
alias close_conda="export PATH=\"$ORG_PATH"

# activate deactivate environment
source activate env1
deactivate

# clone environment
conda create -n env2 --clone env1

# best method to install opencv-python
conda install -c loopbio -c conda-forge -c pkgw-forge ffmpeg gtk2 opencv
