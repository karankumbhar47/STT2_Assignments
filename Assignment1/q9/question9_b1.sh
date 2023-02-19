#Initializing Git
git init

#Creating a file and committing it
echo "Git is a nice tool." > f1.txt

git add .
git commit -m "Added f1"

#Initializing git flow which creates a develop branch.
git flow init

#Creating a feature branch using git flow.
git flow feature start feature1

echo "GitRocks" > f2.txt
git add .
git commit -m "Added f2"

echo "The Dynamic Trio" > f3.txt
git add .
git commit -m "Added f3"

#Merging the feature branch using git flow
#Below command will merge feature1 branch to develop branch and feature1 branch will get deleted
git flow feature finish feature1

#Showing git graph
git graph

