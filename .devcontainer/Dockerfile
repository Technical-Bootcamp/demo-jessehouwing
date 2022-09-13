FROM mcr.microsoft.com/vscode/devcontainers/universal:2-linux

COPY library-scripts/*.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/azcli-debian.sh \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts




USER codespace

RUN az extension add --name azure-devops
RUN gh extension install github/gh-valet

COPY --chown=codespace:codespace ./valet /usr/bin/valet
RUN chmod +x /usr/bin/valet

COPY --chown=codespace:codespace ./valet-update /usr/bin/valet-update
RUN chmod +x /usr/bin/valet-update
