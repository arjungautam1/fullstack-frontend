#! /bin/bash

# Specify a folder for hooks (only available for git version >= 2.9)
git config core.hooksPath .githooks

# Installation of MySQL (via Homebrew) feature fails.
# Install MySQL after container creation.
# Failed feature: ghcr.io/devcontainers-contrib/features/mysql-homebrew:1
brew install mysql

# No available feature for installing Container Structure Test https://github.com/GoogleContainerTools/container-structure-test
brew install container-structure-test

# Installation of Podman (via Homebrew) feature fails.
# Install Podman after container creation.
# Failed feature: ghcr.io/devcontainers-contrib/features/podman-homebrew:1
brew install podman

# No available feature for installing Podman Compose: https://github.com/containers/podman-compose
pip3 install podman-compose

# No available feature for installing Aqua Security Trivy: https://github.com/aquasecurity/trivy
brew install trivy

# No available feature for installing regclient: https://github.com/regclient/regclient
curl -L https://github.com/regclient/regclient/releases/latest/download/regctl-linux-amd64 > ${HOME}/.local/bin/regctl
chmod 755 ${HOME}/.local/bin/regctl
