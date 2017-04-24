set GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH /usr/local/bin /usr/local/sbin
set HISTCONTROL "ignoredups"

alias pg='ping 8.8.8.8'

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cf 'pz'
end
