#!/usr/bin/env bash
TASKWARRIOR=task # v2.5.1
EDITOR=geany
NOTES=~/data/man/.tasknote

RE='^[0-9]+$'
if ! [[ "$1" =~ $RE ]]; then
  echo "Argument is not an integer." >&2
  exit 65
fi

# Find UUID
UUID=$( $TASKWARRIOR $1 uuids )
if [ "$UUID" == "" ]; then
  echo "No UUID returned. Make sure id is valid." >&2
  exit 65
fi

$EDITOR $NOTES/$UUID.txt

exit 0
