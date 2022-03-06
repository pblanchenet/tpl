#!/bin/bash

#----------------------------------------------
# Author: Pierre-Marie BLANCHENET
# DATE: March 2022
#----------------------------------------------

lplays=$*

cd ..

createLocal()
{
  play=$1
  ansible-playbook newnetplay.yml -e "tname=${play}"
}

main()
{
  for lplay in ${lplays}
  do
    createLocal ${lplay}
  done
}

main 2>&1 
