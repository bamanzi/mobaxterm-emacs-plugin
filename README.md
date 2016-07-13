# GNU Emacs 24.5 plugin for MobaXterm

Based on cygwin official binaries of emacs-24.5-3.

## how to build

1. Clone this repo to your local box (or just download a snapshot archive).
2. Run `./make_mxt3.sh` and you'll get two MobaXterm plugins:
  
   - `emacs-24.5.mxt3`: emacs executables & data files (including *.elc)
   - `emacs-ext-24.5.mxt3`: Info pages & emacs lisp sources (*.el)

## how to run

GNU Emacs >= 24.4 would check existence for file '/usr/share/emacs/24.x/etc/charsets' at startup. And if the check fails, GNU Emacs refuses to start.  Currently I provided a script `/bin/emacs-moba-init.sh` in the plugin, **you need to run it _each time_ _after_ you started MobaXterm** (You can add a line in your `~/.bashrc` automatic this).


## limitations

- Only tested on MobaXterm 8.6 & 9.1.
- Currently only terminal version (`emacs-nox`) included. As the `-w32` and `-X11` version depends on libimagekcore6, which in turn pull in too many other DLLs.


## package lists

### binary packages 

(note all DLL packages are of Aug/2013, not updated to latest versions.)

```
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/dbus/libdbus1_3/libdbus1_3-1.6.12-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/gnutls/libgnutls28/libgnutls28-3.2.0-3.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/gmp/libgmp3/libgmp3-4.3.1-3.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/nettle/libhogweed2/libhogweed2-2.7-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/nettle/libnettle4/libnettle4-2.7-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/p11-kit/libp11-kit0/libp11-kit0-0.19.1-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/libtasn1/libtasn1_6/libtasn1_6-3.3-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/GNOME/libxml2/libxml2-2.9.1-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/GNOME/glib2.0/libglib2.0_0/libglib2.0_0-2.34.3-2.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/GNOME/glib2.0/libglib2.0-devel/libglib2.0-devel-2.34.3-2.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/xz/liblzma5/liblzma5-5.0.2_20110517-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/pcre/libpcre1/libpcre1-8.32-1.tar.bz2
http://ftp.cn.debian.org/cygwin/x86/release/emacs/emacs-24.5-3.tar.xz
http://ftp.cn.debian.org/cygwin/x86/release/emacs/emacs-el/emacs-el-24.5-3.tar.xz
```

### source packages

```
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/dbus/dbus-1.6.12-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/gnutls/gnutls-3.2.0-3-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/gmp/gmp-4.3.1-3-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/nettle/nettle-2.7-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/p11-kit/p11-kit-0.19.1-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/libtasn1/tasn-3.3-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/GNOME/libxml2/libxml2-2.9.1-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/GNOME/glib2.0/glib2.0-2.34.3-2-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/xz/xz-5.0.2_20110517-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/pcre/pcre-8.32-1-src.tar.bz2
http://ftp.cn.debian.org/cygwin/x86/release/emacs/emacs-24.5-3-src.tar.xz

```

