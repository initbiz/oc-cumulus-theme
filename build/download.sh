#!/bin/bash
set -e

function run_hook_scripts()
{
  scriptdir="$1"
  shift 1
  if [[ -d $scriptdir ]]
  then
    shopt_nullglob="$(shopt -p nullglob)"
    shopt -s nullglob
    for script_ in "$scriptdir"/*
    do
      if [[ -x $script_ ]]
      then
        "$script_" "$@"
      fi
    done
    $shopt_nullglob
  fi
}

function wait_pids()
{
  for pid in "$@"
  do
    while [[ -e /proc/$pid ]]
    do
      #echo "waiting for $pid"
      sleep 0.5
    done
  done
}

####################### Get PKGBUILDS and related files. #######################
/usr/bin/pbget --pull --aur-only teamviewer

pids=()

#################### Query trust before starting downloads. ####################
/usr/bin/bb-query_trust -l ./teamviewer AUR/teamviewer 1569928148 swiftgeek || exit 1

################ Download sources for package base teamviewer. #################
# Maintainer(s): swiftgeek
# Last modified: 2019-10-01 13:09:08 CEST
# Repository: AUR
# Packages: teamviewer
pushd teamviewer
makepkg --verifysource --nodeps &
pids+=($!)
echo teamviewer ": $!"
popd

############### Wait for downloads and verifications to finish. ################
wait_pids "${pids[@]}"
