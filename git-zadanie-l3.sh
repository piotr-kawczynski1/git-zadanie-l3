
# 1. Dwa commity
git commit
git commit

# 2. Utworzenie i przejście na gałąź bugFix

git branch bugFix
git checkout bugFix

# 3. Utworzenie gałęzi, commit, merge z main
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

# 4. Rebase zamiast merge
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

# 5. Przejście do commita c4
git checkout c4

# 6. Przejście do commita c3
git checkout c3

# 7. Przesunięcie branchy
git branch -f bugFix HEAD~2
git branch -f main c6
git checkout c1

# 8. Reset i revert
git reset HEAD~1
git checkout pushed
git revert HEAD

# 9. Cherry-pick kilku commitów
git cherry-pick c3 c4 c7

# 10. Rebase interaktywny
git rebase -i c1

# 11. Nadpisanie bugFix i cherry-pick
git branch -f bugFix main
git checkout main
git cherry-pick c4

# 12. Rebase i amend
git rebase -i main
git commit --amend
git rebase -i main
git branch -f main c3

# 13. Cherry-pick na main z cofnięciem
git checkout main
git cherry-pick c2
git branch -f main c1
git cherry-pick c2' c3

# 14. Tagowanie
git tag v0 c1
git tag v1 c2
git checkout c2

# 15. Opis i commit
git describe v1
git commit

# 16. Rebase na kilku branchach
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

# 17. Gałąź z konkretnego rodzica
git branch bugWork main^^2^

# 18. Cherry-pick na różnych gałęziach
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2
