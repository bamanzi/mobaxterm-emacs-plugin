#!/bin/bash

for x in emacs emacsclient
do
    /usr/sbin/alternatives --set ${x} /usr/bin/${x}-w32.exe
done
