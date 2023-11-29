# map.txt
# John Doe <new-email@example.com> <old-email@example.com>

reauthor() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    echo "Reauthor $(basename "$PWD")"
    git filter-repo --mailmap ~/map.txt --force
    repo=$(basename "$PWD")
    git remote add origin "git@github.com:rinkaaan/$repo.git"
    git push --set-upstream origin main --force
  fi
}

reauthor-all() {
  # Reauthor the current directory as a repo
  reauthor

  # Find and reauthor all subdirectories that are Git repositories
  find . -type d -maxdepth 1 ! -name ".*" | while read -r dir; do
    (
      cd "$dir" || exit
      if git rev-parse --is-inside-work-tree &>/dev/null; then
        reauthor
      fi
    )
  done
}
