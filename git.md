# Git Command
1. get git size

```shell
git gc
git count-objects -vH
```

2. show large file in history and delete

```shell
cd you_git_repo_dir 

git rev-list --objects --all \
| git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
| sed -n 's/^blob //p' \
| awk '$2 >= 2^20' \
| sort --numeric-sort --key=2 \
| cut -c 1-12,41- \
| $(command -v gnumfmt || echo numfmt) --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest

#detete large files in hostory
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch largefile' --prune-empty --tag-name-filter cat -- --all
```

3. Save local change before pull

```shell
git stash
```

4. Remove last record in stash

```shell
git stash drop
```

5. Recover the content in stash

```shell
git stash pop
```

