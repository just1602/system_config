#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# execute dimple script first
keyboard-layout-conf

run light-locker
run nextcloud
