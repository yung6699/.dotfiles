# homebrew 설치
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor
brew install curl wget

# cask 설치
brew install cask room/cask/brew-cask
brew cask install iterm2
brew install -y zsh git vim

# vim 에디터 설정
sudo echo 'set number' >> ${HOME}/.vimrc
sudo echo 'set backspace=indent,eol,start' >> ${HOME}/.vimrc

# 기본 쉘의 위치를 바꾼다.
sudo echo "$(which zsh)" >> /etc/shells

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

# zsh 플러그인 설치
brew install zsh-syntax-highlighting
sudo echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ${HOME}/.zshrc

 # autojump 설치 후 설정
brew install autojump
echo "[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh" >> ${ZDOTDIR:-$HOME}/.zshrc


# autosuggestions 설치 후 설정
brew install zsh-autosuggestions
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc           

# oh-my-zsh 프롬프트에 기본으로 표시되는 사용자 이름 삭제하기
sudo echo '
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
' >> ${HOME}/.zshrc

# 멀티라인 적용하기
sudo echo '
prompt_newline() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR
%(?.%F{$CURRENT_BG}.%F{red})❯%f"

  else
    echo -n "%{%k%}"
  fi

  echo -n "%{%f%}"
  CURRENT_BG=''
}
' >> ${HOME}/.zshrc

# zshrc 재시작
source ${ZDOTDIR:-$HOME}/.zshrc

# 필요 앱 설치
brew cask install visual-studio-code
brew cask install android-file-transfer simplenote google-chrome karabiner-elements alfred spectacle flux
# brew cask install macx-youtube-downloader youtube-to-mp3

# wget https://download.docker.com/mac/stable/Docker.dmg
# open Docker.dmg 
# rm -rf Docker.dmg

# wget https://download.docker.com/mac/stable/DockerToolbox.pkg
# open DockerToolbox.pkg
# rm -rf DockerToolbox.pkg

reboot

