which -s brew
if [[ $? != 0 ]] ; then
  # Install Homebrew
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

which -s nvim
if [[ $? != 0 ]] ; then
  # Install Neovim
  brew install neovim
fi
