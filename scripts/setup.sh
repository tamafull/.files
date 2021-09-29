SAMPLES_DIR=$(cd $(dirname $0); pwd)/../samples/
if [ "$(uname)" = 'Darwin' ]; then
  # Mac
  cp "$SAMPLES_DIR.zshrc" ~/.zshrc
  cp "$SAMPLES_DIR.zprofile" ~/.zprofile
elif [ "$(expr substr $(uname -s) 1 5)" = 'Linux' ]; then
  # Linux
  cp "$SAMPLES_DIR.bashrc" ~/.bashrc
  cp "$SAMPLES_DIR.profile" ~/.profile
elif [ "$(expr substr $(uname -s) 1 5)" = 'MINGW' ]; then
  # Windows
  cp "$SAMPLES_DIR.bash_profile" ~/.bash_profile
else
  echo "$(uname -a)"
fi
