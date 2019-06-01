# get git size
git gc
git count-objects -vH

# show large file in history
cd you_git_repo_dir 

git rev-list --objects --all \
| git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
| sed -n 's/^blob //p' \
| awk '$2 >= 2^20' \
| sort --numeric-sort --key=2 \
| cut -c 1-12,41- \
| $(command -v gnumfmt || echo numfmt) --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest

#delete file in hinstory
git filter-branch --index-filter "git rm -rf --cached --ignore-unmatch path_to_file" HEAD

# keep your local change before pull
git stash 

# check stashed list
git stash list

# recover local change
git stash pop

# remove stash files
git stash drop
