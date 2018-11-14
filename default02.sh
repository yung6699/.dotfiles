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

# save a list of what is installed globally
npm -g ls --depth=0 > npm_global_packages.txt

# Make a directory for global installations:
mkdir ~/.npm-global

# Configure npm to use the new directory path:
npm config set prefix '~/.npm-global'
# NOTE: add this to your profile as well:
export PATH=~/.npm-global/bin:$PATH 
npm install npm -g
echo "NPM global directory changed: $(npm config get prefix)"

# Remove old npm
sudo rm /usr/local/bin/npm
sudo rm -rf /usr/local/lib/node_modules

# Now reinstall any global npm modules using the list we created above


# zshrc 재시작
source ${ZDOTDIR:-$HOME}/.zshrc

# 필요 앱 설치
brew cask install visual-studio-code
brew cask install android-file-transfer google-chrome spectacle flux Alfred

brew cask install macx-youtube-downloader youtube-to-mp3

sudo reboot

