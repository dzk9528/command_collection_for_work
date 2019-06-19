# Conda Command

1. in case path error in make process for cmake project

```shell
export ORG_PATH="$PATH"

alias open_conda="export PATH=\"$ORG_PATH:~/anaconda2/bin\""
alias close_conda="export PATH=\"$ORG_PATH"
```

2. activate deactivate environment

```shell
source activate env1
deactivate
```

3. clone environment

```shell
conda create -n env2 --clone env1
```

4. best method to install opencv-python

```shell
conda install -c loopbio -c conda-forge -c pkgw-forge ffmpeg gtk2 opencv
```
