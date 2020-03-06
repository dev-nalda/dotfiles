echo "Installing Command Line Developer Tools if not installed"
if ! [ -d /Library/Developer/CommandLineTools ]; then
  echo "🙏 Please, click on Install & Agree to accept the Command Line Developer Tools License Agreement"
  sleep 1
  xcode-select --install
  read -rp "👀 Press enter once the installation finishes" not_needed_param
else
  echo "✅ Command Line Developer Tools are already installed!"
fi

echo "⚡️ Installing brew if not installed"
if ! [ -x "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "📦 Installing git"
brew install git
[ ! -f $HOME/.gitconfig ] && ln -nfs $DOTFILES_PATH/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -nfs $DOTFILES_PATH/.gitignore_global $HOME/.gitignore_global

echo "🐍 Installing Python3"
brew install python3

echo "🤖 Installing zsh plugins"
# zsh is default shell in macOS Catalina 
if ! [ -x "$(command -v brew)" ]; then
	brew install zsh
fi

brew install zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# Replace .zshrc
if [ -f $HOME/.zshrc ]; then
	rm $HOME/.zshrc
fi
ln -nfs $DOTFILES_PATH/.zshrc $HOME/.zshrc

echo "📦 Installing Dropbox"
brew cask install Dropbox

echo "🔐 Installing 1Password"
brew cask install 1password

echo "📝 Installing Typora"
brew cask install typora

echo "👍 Installing VSCode"
brew cask install visual-studio-code

echo "🧊 Installing Spectacle"
brew cask install spectacle

echo "📸 Installing Snappy"
brew cask install snappy

echo "🤖 Installing Mackup"
brew install mackup

echo "🥎 Installing tig"
brew install tig

echo "🐳 Installing Docker"
brew cask install docker

[ ! -f $HOME/.mackup.cfg ] && ln -nfs $DOTFILES_PATH/.mackup.cfg $HOME/.mackup.cfg
