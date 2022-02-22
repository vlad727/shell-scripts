#! /bin/bash

# take a word from user and put in var $word
read -r -p "Please input your word: " word

# check how much letters does it contain
size=${#word}

# print the number
echo "Your word contain $size letters"

input_from() {
read  -r -p "Do you want to proceed? " ask
}

input_from

ask_func() {
case $ask in
y|Y)
  echo "Your word in reverse: "
  echo $word | rev # do reverse for word
  ;;
n|N)
  printf "You said no\nThat is very sad :(\n"
  ;;
*)
  echo "Please use N/n or Y/y"
esac
}
ask_func

input_from