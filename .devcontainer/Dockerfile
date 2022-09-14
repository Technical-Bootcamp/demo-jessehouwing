FROM mcr.microsoft.com/vscode/devcontainers/universal:2-linux

COPY library-scripts/*.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/azcli-debian.sh \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts




USER codespace

RUN az extension add --name azure-devops