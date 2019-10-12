#!/bin/bash

function create() {
    cd
    python create.py $1
    cd /Users/kalle/Documents/Projects/MyProjects/$1
    git init
    git remote add origin https://github.com/rahul1116/$1.git/
    echo "" >> README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}