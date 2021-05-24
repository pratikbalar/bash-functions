function tarr(){
  TMP_XCURRENT=$(pwd)
  mv $1 /tmp
  cd /tmp
  tar xvzf $1
  cp $2 $3
  chmod a+x $3
  cd $TMP_XCURRENT
}
