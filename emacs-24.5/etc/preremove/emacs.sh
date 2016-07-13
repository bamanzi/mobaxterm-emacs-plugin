/usr/sbin/update-alternatives \
    --remove emacs /usr/bin/emacs-nox.exe
/usr/sbin/update-alternatives \
    --remove emacsclient /usr/bin/emacsclient-nox.exe
if [ -f /var/games/emacs/snake-scores ] && cmp -s /etc/defaults/var/games/emacs/snake-scores /var/games/emacs/snake-scores
then
    rm /var/games/emacs/snake-scores
fi

if [ -f /var/games/emacs/tetris-scores ] && cmp -s /etc/defaults/var/games/emacs/tetris-scores /var/games/emacs/tetris-scores
then
    rm /var/games/emacs/tetris-scores
fi

