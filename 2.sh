#!/bin/bash
read -p "Enter the branch name = "  branchname 
git checkout -b $branchname
git branch -r 
git add .
git commit -m "Added new Branch"
git push origin
