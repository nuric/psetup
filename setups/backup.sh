#!/bin/bash
set -e

# Collect information about home directory
info() {
  echo "Collecting home directory size:"
  du -sh ~/*
}

# Moves compiled files into expected folders
save() {
  echo "Creating new backup $1"
  if [[ "$1" != *.tar.xz ]]; then
    echo "Backup saves to .tar.xz files, please fix destination."
    exit 1
  fi
  # Save back up
  TEMP=`mktemp`
  echo "Temp file name ${TEMP}"
  echo "Creating tar archive..."
  tar -cvJpf ${TEMP} --exclude=.cache --exclude=.local --exclude=.npm --exclude=node_modules --exclude=.vim ~/
  echo "Sending archive to $1"
  scp -C ${TEMP} $1
  echo "Deleting temp file ${TEMP}"
  rm ${TEMP}
}

# Sync MT4 expert changes back to repo
load() {
  echo "Loading backup $1"
  echo "TODO: Not implemented."
}

# Check for arguments
if [ $# -eq 0 ]
then
  echo "No arguments given, usage:"
  echo "[i]info: show information about home folder"
  echo "[s]ave [destination]: backup home directory to destination"
  echo "[l]oad [destination]: load backup from destination"
fi

# idiomatic parameter and option handling in sh
while test $# -gt 0
do
  case "$1" in
    i|info)
      info
      ;;
    s|save)
      save "$2"
      shift
      ;;
    l|load)
      load "$2"
      shift
      ;;
    *)
      echo "Unknown option $1"
      echo "Check usage by running without arguments"
      ;;
  esac
  shift
done
