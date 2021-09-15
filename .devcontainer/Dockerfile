FROM mcr.microsoft.com/vscode/devcontainers/universal:1.6.4-linux

USER codespace

RUN npm install -g npm
    
RUN az extension add --name azure-devops \
    && az extension add --name application-insights \
    && az extension add --name portal