FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN apt-get update
RUN apt-get install -y git

USER vscode
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN nvm install --lts
RUN npm install -g markdownlint-cli markdown-spellcheck markdown-link-check
