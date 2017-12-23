
if [ -d $HOME/.bashrc.d ]; then
  for x in $HOME/.bashrc.d/* ; do
    test -f "$x" || test -L "$x" || continue
    test -x "$x" || test -L "$x" || continue
    source "$x"
  done
fi

if [ -d $HOME/.bashrc.d-local ]; then
  for x in $HOME/.bashrc.d-local/* ; do
    test -f "$x" || test -L "$x" || continue
    test -x "$x" || test -L "$x" || continue
    source "$x"
  done
fi

