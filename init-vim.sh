#!/usr/bin/env bash
DOTVIMDIR=`dirname $0`
(cd $DOTVIMDIR && git submodule init && git submodule update)
vim -c "execute \"PluginInstall\" | qa"
