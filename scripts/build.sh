#!/bin/bash 

cd src 
zola build && rsync -r public/* ../docs
cd -
git add src/*
git add docs/*
git commit -m 'built website'