# GNU Emacs plugin for MobaXterm

Based on cygwin official binaries of emacs-24.3 & emacs-24.5.

Note: Only tested on MobaXterm 8.6 & 9.1, if you want to run it on older versions of MobaXterm, DLL dependencies first.

## How to build

1. Clone this repo to your local box (or just download a snapshot archive).
2. Run `./make_mxt3.sh` and you'll get two MobaXterm plugins:
  
   - `emacs-24.3.mxt3`: emacs executables & data files (including *.elc) - terminal version (`emacs-nox`) & win32 GUI version (`emacs-w32`)
   - `emacs-ext-24.3.mxt3`: Info pages & emacs lisp sources
   - `emacs-24.5.mxt3`: emacs executables & data files (including *.elc) - terminal version (`emacs-nox`) only
   - `emacs-ext-24.5.mxt3`: Info pages & emacs lisp sources

## How to run

- for emacs-24.3.mxt3

Just play it into your MobaXterm folder and restart MobaXterm. Then you can use command `emacs-nox` to start the terminal UI, or `emacs-w32` to start the Win32 GUI.

Currently the X11 version not included, as it depends on libimagekcore6, which in turn pulls in tooo many other DLLs.

- for emacs-25.3.mxt3

As GNU Emacs >= 24.4 would check existence for file '/usr/share/emacs/24.x/etc/charsets' at startup, and refuses to start if that check fails, GNU Emacs refuses to start. So currently I provided a script `/bin/emacs-moba-init.sh` to workaround this problem, **you need to run `emacs-moba-init.sh` _each time_ _after_ you started MobaXterm** (You can add a line in your `~/.bashrc` automatic this).

Currently only the terminal version (`emacs-nox`) included, as both `emacs-w32` & `emacs-X11` of 24.5 depend on libimagekcore6, which in turn pulls in tooo many other DLLs.


## TODO

- Build the X11 version without libimagecore (or just the add the X11 binary with all the DLLs required.)
- Find a better workaround for the checking of `etc/charsets` in Emacs >= 24.4


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
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/emacs/emacs-24.3-1.tar.gz
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/emacs/emacs-w32/emacs-24.3-1.tar.gz
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/emacs/emacs-el/emacs-el-24.3-1.tar.gz
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/giflib/libgif4/libgif4-4.1.6-10.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/jpeg/libjpeg8/libjpeg8-8b-1.tar.gz
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/libpng/libpng15/libpng15-1.5.12-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/tiff/libtiff5/libtiff5-3.9.7-1.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/jbigkit/libjbig2-2.0-12.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/libXpm-noX/libXpm-noX-3.5.10-1.tar.bz2
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
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/emacs/emacs-24.3-1-src.tar.gz
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/giflib/giflib-4.1.6-10-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/jpeg/jpeg-8b-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/libpng/libpng-1.5.12-1-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/jbigkit/jbigkit-2.0-12-src.tar.bz2
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/libXpm-noX/libXpm-noX-3.5.10-1-src.tar.bz2
http://ftp.cn.debian.org/cygwin/x86/release/emacs/emacs-24.5-3-src.tar.xz
http://ftp.eq.uc.pt/software/pc/prog/cygwin/release/pcre/libpcre1/libpcre1-8.32-1.tar.bz2
```

