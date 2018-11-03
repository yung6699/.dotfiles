# zshrc 재시작
source ${ZDOTDIR:-$HOME}/.zshrc

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

echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>  ${ZDOTDIR:-$HOME}/.zshrc

# autosuggestions 설치 후 설정
brew install zsh-autosuggestions

echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc           

# 멀티라인 및 터미널 세팅
echo "source ~/.dotfiles/zshValues" >> ${ZDOTDIR:-$HOME}/.zshrc


# node 설치
brew install npm


# zshrc 재시작
source ${ZDOTDIR:-$HOME}/.zshrc

# 필요 앱 설치
brew cask install visual-studio-code
brew cask install android-file-transfer google-chrome spectacle flux Alfred

brew cask install macx-youtube-downloader youtube-to-mp3

sudo reboot

