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
brew install -y vim curl wget
brew install zsh

# cask 설치
brew tap caskroom/cask
 
# zsh 쉘 위치 찾아 적용
sudo chmod 777 /etc/shells
sudo echo "$(which zsh)" >> /etc/shells
sudo chmod 644 /etc/shells

# 기본 쉘의 위치를 바꾼다.
chsh -s $(which zsh) 

# 쉘 확인
echo $SHELL

# vim 에디터 설정
sudo echo 'set number' >> ${ZDOTDIR:-$HOME}/.vimrc
sudo echo 'set backspace=indent,eol,start' >> ${ZDOTDIR:-$HOME}/.vimrc


