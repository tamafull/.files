autoload -Uz colors && colors
setopt PROMPT_SUBST
if [ ! -e ~/.zsh/.git-prompt.sh ]; then
  mkdir ~/.zsh
  curl -o ~/.zsh/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
  mv ~/.zsh/git-prompt.sh ~/.zsh/.git-prompt.sh
fi
source ~/.zsh/.git-prompt.sh
PROMPT='%F{blue}%W%f %F{blue}%*%f: %F{green}%~%f %F{red}$(__git_ps1 "%s" )%f'$'\n'"%# "
setopt auto_cd
setopt auto_pushd
setopt hist_ignore_all_dups
setopt correct
setopt auto_pushd
alias z='code ~/dev/.files'
alias dein='code ~/.cache/dein.toml/' # Mac買い換えたら消すかも
alias deinl='code ~/.cache/dein_lazy.toml/'

# zsh専用
alias -s gz='tar -xzvf'
alias -s html='open'
alias -s csv='code'
alias -s txt='vi'
# alias -s vimrc='vi'
# alias -s zshrc='code'
# alias -s zprofile='code'
# alias -s env='code'
# alias -s envrc='code' これできたらいいんだけどファイル名がないとできないっぽい
