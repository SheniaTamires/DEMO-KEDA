FROM mcr.microsoft.com/devcontainers/base:ubuntu
RUN apt-get update && apt-get install -y curl git jq python3 python3-pip && rm -rf /var/lib/apt/lists/*
# kubectl
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl
# kind
RUN curl -Lo /usr/local/bin/kind https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64 \
 && chmod +x /usr/local/bin/kind
# helm
RUN curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
