# nvm 설치 및 node 설치
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

sudo echo 'export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ${HOME}/.zshrc

sudo echo 'alias npmg="npm ls -g --depth=0"' >> ${HOME}/.zshrc

source ${HOME}/.zshrc

nvm install node --lts

npm install -g yarn babel-cli eslint eslint-cli hexo-cli pm2 nodemon create-react-app
