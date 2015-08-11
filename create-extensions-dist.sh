#!/bin/bash
git checkout gh-pages &&\
git merge master -m "Merge master" &&\
gulp build:extensions &&\
git add Extensions &&\
git commit -m "Rebuild distribution" &&\
git push &&\
git checkout master
