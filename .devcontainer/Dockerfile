FROM mcr.microsoft.com/devcontainers/dotnet:0-6.0-bullseye

RUN apt-get update
RUN apt-get install -y git

USER vscode
# RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN . $NVM_DIR/nvm.sh; nvm install --lts
RUN npm install -g markdownlint-cli markdown-spellcheck markdown-link-check
