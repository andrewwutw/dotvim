#!/usr/bin/env bash
DOTVIMDIR=`dirname $0`
F=vimrc
S=~/.$F
T=$DOTVIMDIR/$F

if stat $S > /dev/null 2>/dev/null; then
  # ~/.FILE already exist
  if [[ `readlink $S` == $T ]]; then
    echo "$F : Linked to right place."
  else
    echo "$F : Already exist, need fix?"
  fi
else
  # ~/.FILE not exist, create link
  if ln -s $T $S; then
    echo "$F : Create link to $T"
  else
    echo "$F : Create link failed!"
  fi
fi

(cd $DOTVIMDIR && git submodule init && git submodule update)
vim -c "execute \"PluginInstall\" | qa"
