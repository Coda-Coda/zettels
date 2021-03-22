if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes";
  git add -A
  git commit -m "Update"
else
  echo "No changes";
fi

git pull --rebase=false
git push