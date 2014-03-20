export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\$ '
alias ls='ls -GFh'
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi
. $HOME/bin/z.sh
export DOCKER_HOST=tcp://127.0.0.1:4243
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
