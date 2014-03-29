export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi
. $HOME/bin/z.sh
if has("gui_macvim")
  alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
endif
