# nvm 설치 및 node 설치
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

source ${ZDOTDIR:-$HOME}/.zshrc

nvm install node --lts

npm install -g yarn babel-cli eslint eslint-cli  
