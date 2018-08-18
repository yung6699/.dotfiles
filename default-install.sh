# usr/username 에서 실행해야한다.

# homebrew 설치
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

# cask 설치
brew install cask room/cask/brew-cask
brew cask install iterm2
brew install -y zsh git vim

sudo echo "$(which zsh)" >> /etc/shells


# 기본 쉘의 위치를 바꾼다.
chsh -s $(which zsh) 

echo $SHELL

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Powerline fonts 설치 clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


brew install zsh-syntax-highlighting

sudo echo 'set number' >> ${HOME}/.vimrc
sudo echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ${HOME}/.zshrc
sudo echo 'prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}' >> ${HOME}/.zshrc

sudo echo 'alias python="python3"' >> ${HOME}/.zshrc


source ${HOME}/.zshrc

# 필요 앱  설치
brew cask install visual-studio-code
brew cask install android-file-transfer simplenote google-chrome karabiner-elements alfred spectacle flux
#brew cask install macx-youtube-downloader youtube-to-mp3

reboot

