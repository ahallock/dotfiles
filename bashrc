export PS1="\[\033[0;30;33m\]\w\[\e[0m\]$ "
alias ls='ls -GFh'
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi
. $HOME/bin/z.sh
export DOCKER_HOST=tcp://127.0.0.1:4243
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
