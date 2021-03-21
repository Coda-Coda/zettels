if [ -n "$(git status --porcelain)" ]; then
  echo "there are changes";
  git add -A
  git commit -m "Update"
else
  echo "no changes";
fi

git pull --rebase=false
git push