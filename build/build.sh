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

########################### Build package teamviewer ###########################
# Maintainer(s): swiftgeek
# Last modified: 2019-10-01 13:09:08 CEST
# Repository: AUR
# Package Base: teamviewer
pushd teamviewer
/usr/bin/bb-query_trust -l . AUR/teamviewer 1569928148 swiftgeek || exit 1
makepkgx -irs --pconfig /etc/pacman.conf --pkg teamviewer
pacman --config /etc/pacman.conf -T teamviewer || exit 1
popd
