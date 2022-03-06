#!/bin/bash

#----------------------------------------------
# Author: Pierre-Marie BLANCHENET
# DATE: March 2022
#----------------------------------------------

nplays=$*

cd ..

createNet()
{
  play=$1
  echo "Creating new net play ${play} ..."
  ansible-playbook newnetplay.yml -e "tname=${play}"
}

main()
{
  for nplay in ${nplays}
  do
    createNet ${nplay}
  done
}

main 2>&1 
