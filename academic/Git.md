---
aliases:
  - GitHub
  - github
  - git
  - Git
---

# Git

## Fork

```bash
# Sync to remote
git remote add upstream <original:repo>
git fetch upstream
```

## Rebase

Rebase dev on master

```bash
git checkout dev
git rebase master dev
```

### Undo

```bash
git reflog

c0437c2 (HEAD -> dev, origin/dev) HEAD@{0}: rebase -i (finish): returning to refs/heads/dev
c0437c2 (HEAD -> dev, origin/dev) HEAD@{1}: rebase -i (start): checkout refs/remotes/origin/dev
c0437c2 (HEAD -> dev, origin/dev) HEAD@{2}: checkout: moving from main to dev
30d3373 (origin/main, origin/HEAD, main) HEAD@{3}: clone: from git@gitlab.cscscience.ca:keaton/git-training-documentation.git

git reset --hard HEAD@{2}
```

## Submodules

```bash
git submodule update --init --recursive
```

```bash
git config --remove-section submodule.surveiller
```
## Update File Permissions

```bash
git update-index --chmod=+x 
```

## Auto Update


```bash
commit_msg='automated updated';


for project in `ls -d *`; 
do 
  if [[ -e $project/.git ]]; then   
    cd $project;
    git_diff=`git diff-index HEAD -- | cut -d " " -f 5-`;
    if [[ $git_diff ]]; then 
	  echo "\nProject: $project";
      echo $git_diff;
      #git add -A
      #git commit -m "$commit_msg"
      #git push;
      cd ..;
    else;
      cd ..;
    fi;
  fi; 
done
```

- git diff-index might not be the way to go for untracked changes.

## Recover

```bash
git checkout 4e178655430 -- *NML*
```

## Search Git history

### File

```bash
git log --all --full-history -- "**/*NML*
```

### Content or String

```bash
file='Plague Phylodynamics and Phylogeography Paper.md'
ls -l $file;
latest=`git log --oneline $file | head -n 1 | cut -d " " -f 1`;
git log -S "xml" --follow -p $file;

git checkout 13512b8 -- $file;
```

```bash
file="workflow/Snakefile";
string="taxonium"
latest=`git log --oneline $file | head -n 1 | cut -d " " -f 1`;
git log --follow -S \"$string\" --follow -p $file;
```

## Merge and Rebase

```bash
git config --global pull.rebase true
git rebase master dev
git push origin dev --force
```

## Release

**Branch Sync**

**GitHub**

- [ ] Tag Release

	```bash
	git tag -a -m "Update Dependencies" v0.8.3
	```

- [ ] Update CHANGELOG

	```bash
	autologs/autologs --changelog -o CHANGELOG.md
	```

- [ ] Undo and Redo Tag

	```bash
	git tag -d v0.8.3
	git add -A
	git commit -m "update CHANGELOG"
	git tag -a -m "Update Dependencies" v0.8.3
	```

- [ ] Upload Tag

	```bash
	git push
	git push origin v0.8.3
	```

- [ ] Verify all CI
- [ ] Publish release.
