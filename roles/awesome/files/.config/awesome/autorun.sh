#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run urxvtd -q -o -f
run light-locker
run keybase
run nextcloud
