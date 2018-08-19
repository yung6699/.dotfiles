# homebrew 설치
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor
brew install -y zsh git vim curl wget

# cask 설치

brew cask install room/cask/brew-cask
brew cask install iterm2

# vim 에디터 설정
sudo echo 'set number' >> ${HOME}/.vimrc
sudo echo 'set backspace=indent,eol,start' >> ${HOME}/.vimrc

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
sudo echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ${HOME}/.zshrc

 # autojump 설치 후 설정
brew install autojump
echo "[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh" >> ${ZDOTDIR:-$HOME}/.zshrc


# autosuggestions 설치 후 설정
brew install zsh-autosuggestions
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc           

# 멀티라인 및 터미널 세팅
sudo echo "source ${ZDOTDIR:-$HOME}/.dotfiles/values/zshValues" >> ${ZDOTDIR:-$HOME}/.zshrc

# zshrc 재시작
source ${ZDOTDIR:-$HOME}/.zshrc

# 필요 앱 설치
brew cask install visual-studio-code
brew cask install android-file-transfer simplenote google-chrome karabiner-elements alfred spectacle flux
# brew cask install macx-youtube-downloader youtube-to-mp3

reboot

