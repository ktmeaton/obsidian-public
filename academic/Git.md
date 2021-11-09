---
aliases:
  - github
---

# Git

## Fork

```bash
# Sync to remote
git remote add upstream <original:repo>
git fetch upstream
```

## Submodules

```bash
git submodule update --init --recursive
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
	  git add -A
	  git commit -m "$commit_msg"
	  git push;
	  cd ..;
	else;
	  cd ..;
	fi;
  fi; 
done
```

- git diff-index might not be the way to go for untracked changes.


## Search Git history for content or string.

```bash
file='Plague Phylodynamics and Phylogeography Paper.md'
ls -l $file;
latest=`git log --oneline $file | head -n 1 | cut -d " " -f 1`;
git log -S "xml" --follow -p $file;

git checkout 13512b8 -- $file;
```

```bash
file='Eaton et al. 2021 Plagued by a cryptic clock.md';
string='Subtrees of the maximum-likelihood phylogeny'
latest=`git log --oneline $file | head -n 1 | cut -d " " -f 1`;
git log -S \"$string\" --follow -p $file;
```