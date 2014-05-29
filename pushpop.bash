#! /bin/bash

function PPCheckFile {
  if [ ! -e ~/.ppstack ] ; then
    > ~/.ppstack
  fi
}

function PPPush {
  PPCheckFile
  echo $1 | cat - ~/.ppstack > ~/.pptmp && mv ~/.pptmp ~/.ppstack
}

function PPPop {
  PPCheckFile
  head -n +1 ~/.ppstack
  tail -n +2 ~/.ppstack > ~/.pptmp && mv ~/.pptmp ~/.ppstack
}

function PPList {
  cat ~/.ppstack
}

