#!/bin/sh

ZIP=`which zip || echo "../zip"`
for d in emacs-24.5 emacs-ext-24.5; do
  (cd $d && $ZIP -r -1 ../$d.mxt3 *)
done 
