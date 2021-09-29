THIS_DIR="$(cd $(dirname $0); pwd)/"

if [ -f "$THIS_DIR.base_profile" ] ; then
echo "aaaa"
  source "$THIS_DIR.base_profile"
fi

if [ -f "$THIS_DIR.baseshrc" ] ; then
echo "bbbb"
  source "$THIS_DIR.baseshrc"
fi

if [ -f "$THIS_DIR.winrc" ] ; then
echo "cccc"
  source "$THIS_DIR.winrc"
fi

export GIT_PAGER="LESSCHARSET=utf-8 less"
export PGDATA=/usr/local/var/postgres

export PATH="$HOME/.rbenv/libexec:$PATH"

# 信頼できるrbenv代替がないため暫定対応
# direnvとか使えばrbenv localも可
rbset(){
  if [ $1 == "30" ]; then
    export PATH="/e/Devtools/Ruby/Ruby30-x64/bin:$PATH"
  elif [ $1 == "27" ]; then
    export PATH="/e/Devtools/Ruby/Ruby27-x64/bin:$PATH"
  fi
}
rbset 30

if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

if [ -d "${HOME}/man" ]; then
  MANPATH="${HOME}/man:${MANPATH}"
fi
