defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g QLPanelAnimationDuration -float 0;killall Finder
defaults write com.apple.Dock autohide-delay -float 0;killall Dock
defaults write com.apple.dock expose-animation-duration -float 0.15;killall Dock


# homebrew 설치
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update
brew install -y zsh vim curl wget

# cask 설치
brew install cask room/cask/brew-cask2

# vim 에디터 설정
sudo echo 'set number' >> ${ZDOTDIR:-$HOME}/.vimrc
sudo echo 'set backspace=indent,eol,start' >> ${ZDOTDIR:-$HOME}/.vimrc

# zsh 쉘 위치 찾아 적용
sudo echo "$(which zsh)" >> /etc/shells

# 기본 쉘의 위치를 바꾼다.
chsh -s $(which zsh) 

# 쉘 확인
echo $SHELL

# oh-my-zsh 설치
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Powerline fonts 설치 clone
git clone https://github.com/powerline/fonts.git --depth=1

# install
cd fonts
./install.sh

# clean-up a bit
cd ..
rm -rf fonts

# zsh 플러그인 설치
brew install zsh-syntax-highlighting
sudo echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>  ${ZDOTDIR:-$HOME}/.zshrc

# autosuggestions 설치 후 설정
brew install zsh-autosuggestions
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc           

# 멀티라인 및 터미널 세팅
sudo echo "source ~/.dotfiles/zshValues" >> ${ZDOTDIR:-$HOME}/.zshrc


# nvm 설치 및 node 설치
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

# zshrc 재시작
source ${ZDOTDIR:-$HOME}/.zshrc

# 필요 앱 설치
brew cask install visual-studio-code
brew cask install android-file-transfer google-chrome karabiner-elements spectacle flux Alfred
# brew cask install macx-youtube-downloader youtube-to-mp3

sudo reboot

