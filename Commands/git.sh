# Configure  git
git config --global user.name "Lincoln Nguyen"
git config --global user.email "137611486+rinkaaan@users.noreply.github.com"

# Remove all .env files from git history
git filter-branch --index-filter "git rm -rf --cached --ignore-unmatch **/\.env" HEAD
# List all .env files in git history
git log --all -n-only --full-history | grep '\.env'

# Edit commit message of a previous commit
git rebase -i <commit-hash>~1

# Change commit author for entire git project
git config --global user.name "New Author Name"
git config --global user.email "<email@address.example>"
git rebase -r --root --exec "git commit --amend --no-edit --reset-author"

# View remote url
git remote -v

# Unstage all files
git reset

# Set origin
git branch --set-upstream-to=origin/mainline mainline

# Rebase from root
git rebase -i --root main

# Delete all branches except master
git branch | grep -v "main" | xargs git branch -D

# Remove all remotes
git remote | xargs -n1 git remote remove

# Remove a file from git history
git filter-repo --invert-paths --path <file>

# List remotes
git remote -v

# Remove remote
git remote remove origin

# Add remote
git remote add origin git@github.com:rinkaaan/aincrad.git
git fetch origin

# Push to new branch
git push origin HEAD:mainline2

# Assume unchanged
git update-index --assume-unchanged build.gradle.kts

# Filemode
git config core.filemode false
