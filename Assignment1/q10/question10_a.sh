#!/bin/bash

#Initializing Git
git init 

#Creating files and Committing them
echo "1st Dummy Commit" > f1.txt
git add . 
git commit -m "First Commit"

echo "2nd Dummy Commit" > f2.txt
git add .
git commit -m "Second Commit"

#Creating Three Branches named as our group member's roll numbers 
git branch 12140860
git branch 12140540 
git branch 12140110
branches=(12140540 12140110 12140860 master)

#Loop through branches in random order and creating commits
for i in {1..8}
do
    #Randomly select a branch
    branch=${branches[$((RANDOM % 4))]}
    echo "$branch"
    #Checkout the branch
    git checkout "$branch"

    #Create a dummy file
    echo "iitbhilai$i" > "$i.txt"
    git add .
    git commit -m "Committing"
    sleep 1
done

#Return to master branch
git checkout master


