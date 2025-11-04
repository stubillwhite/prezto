#!/bin/zsh
setopt EXTENDED_GLOB
realpath() {
  [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

for FILE in runcoms/^README.md; do
  HOME_FILE="$HOME/.`basename $FILE`"
  rm -f $HOME_FILE 2> /dev/null || true
  ln -s `realpath $FILE` $HOME_FILE
done

ln -s `realpath .` ~/.zprezto
