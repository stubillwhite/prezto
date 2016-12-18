#!/bin/zsh
setopt EXTENDED_GLOB
for FILE in runcoms/^README.md; do
  HOME_FILE="$HOME/.`basename $FILE`"
  rm -f $HOME_FILE 2> /dev/null || true
  ln -s "$(pwd)/$FILE" $HOME_FILE
done
ln -s "$(pwd)" ~/.zprezto
