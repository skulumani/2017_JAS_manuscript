#!/bin/bash

# add the correct remote repositories
git_repo="git@github.com:skulumani/2015_Acta_manuscript.git"
bb_repo="git@bitbucket.org:shankarkulumani/2015_acta_manscript.git"


printf "Setting the origin remote to point to Github and Bitbucket:\n\n"
printf "Github: $git_repo\n"
printf "Bitbucket: $bb_repo\n\n"


git remote add origin $git_repo
git remote set-url origin --push --add $bb_repo
git remote set-url origin --push --add $git_repo

printf "Finished! The new remotes are listed.\n"
printf "\n"

git remote -v