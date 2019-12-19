. "$HOME/.bashrc"
export PATH="$HOME/bin:$PATH"

reload_gtk_theme() {
  theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
  gsettings set org.gnome.desktop.interface gtk-theme ''
  sleep 1
  gsettings set org.gnome.desktop.interface gtk-theme $theme
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"
export GOROOT="/usr/local/go"
export GOPATH="/home/aryan/go"
export GOBIN="/home/aryan/go/bin"

svcd() {
  exec consul agent -dev -client=0.0.0.0
}

cd() {
  if [ "$#" = "0" ]; then
    pushd ${HOME} > /dev/null;
    echo $(exec pwd) > $HOME/.directory;
  elif [ -f "${1}" ]; then
    ${EDITOR} ${1};
  else
    pushd "$1" > /dev/null;
    echo $(exec pwd) > $HOME/.directory;
  fi
}

cds() {
   cd $(pwd -P)
}

export MYVIMRC=~/.vimrc
export PATH="$HOME/.cargo/bin:$PATH"
