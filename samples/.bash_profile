export PRIVATEPC="仕事用PCでは未定義もしくは空文字にする"
export DOT_FILES_DIR="$HOME/.files"

if [ -f "$DOT_FILES_DIR/.bash_profile" ] ; then
  source "$DOT_FILES_DIR/.bash_profile"
fi
