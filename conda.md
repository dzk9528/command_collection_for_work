# Conda Command

1. in case path error in make process for cmake project

```bash
export ORG_PATH="$PATH"

alias open_conda="export PATH=\"$ORG_PATH:~/anaconda2/bin\""
alias close_conda="export PATH=\"$ORG_PATH"
```

2. activate deactivate environment

```bash
source activate env1
deactivate
```

3. clone environment

```bash
conda create -n env2 --clone env1
```

4. best method to install opencv-python

```bash
conda install -c loopbio -c conda-forge -c pkgw-forge ffmpeg gtk2 opencv
```
