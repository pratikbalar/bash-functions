## tarr https://github.com/tcnksm/ghr/releases/download/v0.13.0/ghr_v0.13.0_linux_amd64.tar.gz ghr_v0.13.0_linux_amd64/ghr /usr/bin/ghr
function tarr() {
  [[ -z $(which tar) ]] && echo "error tar not found"
  TMP_XCURRENT=$(pwd)
  cd $(mktemp -d)
  wget -nv $1 -O tmp.tar.gz
  tar xvzf tmp.tar.gz
  cp $2 $3
  chmod a+x $3
  cd $TMP_XCURRENT
}

# wgett www.this.com /usr/bin/semver
function wgett(){
  [[ -z $(which wget) ]] && echo "error wget not found"
  TMP_XCURRENT=$(pwd)
  wget -nv $1 -O $2
  chmod a+x $2
  cd $TMP_XCURRENT
}
