#!/bin/bash

#----------------------------------------------
# Author: Pierre-Marie BLANCHENET
# DATE: March 2022
#----------------------------------------------

lplays=$*

cd ..

createNet()
{
  play=$1
  echo "Creating new net play ${play} ..."
  ansible-playbook newnetplay.yml -e "tname=${play}"
}

main()
{
  for lplay in ${lplays}
  do
    createNet ${lplay}
  done
}

main 2>&1 
