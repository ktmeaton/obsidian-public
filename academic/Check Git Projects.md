---
aliases:
  - Check Git Projects
tags:
  - 📝/🌱
status: idea

---

# Check Git Projects

```bash
for project in `ls -d *`; 
do 
  if [[ -e $project/.git ]]; then   
	cd $project;
	git_diff=`git diff-index HEAD -- | cut -d " " -f 5-`;
	if [[ $git_diff ]]; then
	  echo "\nProject: $project";
	  echo $git_diff;
	  git add -A
	  git commit -m "automated update"
	  git push;
	  cd ..;
	else;
	  cd ..;
	fi;
  fi; 
done
```

- git diff-index might not be the way to go for untracked changes.