## tarr https://github.com/tcnksm/ghr/releases/download/v0.13.0/ghr_v0.13.0_linux_amd64.tar.gz ghr_v0.13.0_linux_amd64/ghr /usr/bin/ghr

function tarr() {
  TMP_XCURRENT=$(pwd)
  mkdir -p /tmp/tmp_ext
  cd /tmp/tmp_ext
  wget -nv $1 -O tmp.tar.gz
  tar xvzf tmp.tar.gz
  cp $2 $3
  chmod a+x $3
  cd $TMP_XCURRENT
  rm -rf /tmp/tmp_ext
}


## Alias section
alias set_e="set -e"
alias unset_e="set +e"
