which -s brew
if [[ $? != 0 ]] ; then
  # Install Homebrew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

which -s nvim
if [[ $? != 0 ]] ; then
  # Install Neovim
  brew install neovim
fi
