#!/bin/bash

if [ -z $1 ]
  then
    echo "usage: `basename $0` <version-number>"
    exit 1
fi

VERSION="Intellij$1"
DEST="$HOME/Library/Preferences/IntelliJIdea$1/colors"

if [ -d $VERSION ]
  then
    if [ -d $DEST ]
      then
        echo "Installing from $VERSION to $DEST"
        cp $VERSION/*.icls $DEST
      else
        echo "ERROR: $DEST does not exist"
        exit 1
    fi
  else
    echo "ERROR: Unknown version $VERSION"
    exit 1
fi

exit 0
