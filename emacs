#!/usr/bin/env zsh
#
runname=`basename $0`

rm -f ~/.emacs.d

case $runname in
  doom)
    ln -s ~/.emacs.d.doom ~/.emacs.d
    ;;
  gnu)
    ln -s ~/.emacs.d.gnu ~/.emacs.d
    ;;
esac




