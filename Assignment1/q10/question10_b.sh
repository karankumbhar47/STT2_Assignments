#!/bin/bash

lastBranch=$(echo "$(git log --oneline --decorate --all -1)" | awk '{print $(NF-1)}' | sed 's,[()] ,,g'| sed 's/(//' | sed 's/)//')

echo "$lastBranch"
git checkout $lastBranch

for i in master 12140860 12140110 12140540;
do 
  if [ "$lastBranch" != "$i" ];
  then
    git merge --no-edit "$i"
    git graph -n commits
    sleep 1
  fi
done

