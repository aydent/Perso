#!/bin/bash

# -------------------------------
# Damien LEMARECHAL
# script pour push sur github
# -------------------------------

clear

git add . -A
read -p "Quoi de nouveau: " desc
git commit -m "$desc"
git push -u origin master
