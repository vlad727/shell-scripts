#!/bin/bash

# put arg first arg to var with name file
file=$1


# check conditions
if [ "$file" == "tar" ]
then
  echo "That is tar file"
else
  echo "I do not what is the file"
fi
