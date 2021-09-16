FROM mcr.microsoft.com/vscode/devcontainers/universal:1-linux

USER codespace
    
RUN az extension add --name azure-devops

COPY --chown=codespace:codespace ./valet /usr/bin/valet
RUN chmod +x /usr/bin/valet

COPY --chown=codespace:codespace ./valet-update /usr/bin/valet-update
RUN chmod +x /usr/bin/valet-update
