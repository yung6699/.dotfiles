# nvm 설치 및 node 설치
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

sudo echo 'export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.zshrc

source ~/.zshrc

nvm install node --lts

npm install -g bower babel-cli eslint eslint-cli
