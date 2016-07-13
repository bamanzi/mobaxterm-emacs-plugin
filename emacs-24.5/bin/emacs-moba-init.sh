#!/bin/sh

mobaexe=`ps -ef | grep -i MobaXterm_ | awk -e '{print $6}' | head -1`
mobaroot=`dirname $mobaexe`

#unzip -n ${mobaroot}/emacs-24.5.mxt3 'usr/share/emacs/24.5/*' -d /
set -x
unzip -n ${mobaroot}/emacs-24.5.mxt3 -d /
