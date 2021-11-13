# TODO: private設定に分ける
if [ -n $PRIVATEPC ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"

  export PATH="$PATH:$HOME/Library/flutter/bin"
  export PATH="$PATH:$HOME/Library/Android/sdk/tools/bin/"

  export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
  eval "$(rbenv init -)"

  export NVM_DIR="$HOME/.nvm"
  source ~/.nvm/nvm.sh

  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"

  export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

  export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

  export PATH="/opt/homebrew/opt/jpeg-turbo/bin:$PATH"
fi

ssh-add -A >&/dev/null
