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
file='Eaton_et_al._2021_Plagued_by_a_cryptic_clock.md';
string='position'
latest=`git log --oneline $file | head -n 1 | cut -d " " -f 1`;
git log --follow -S \"$string\" --follow -p $file;
```