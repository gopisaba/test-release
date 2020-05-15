#!/bin/bash
# Install Helm
wget https://get.helm.sh/helm-v3.2.1-linux-amd64.tar.gz
tar -zxvf helm-v3.2.1-linux-amd64.tar.gz
# Update version
version="${nextRelease.version}"
sed -i "s/version: .*/version: $version/g" anotherchart/Chart.yaml
# Package
linux-amd64/helm package --version $version anotherchart/.
# Publish
linux-amd64/helm repo index --url https://gopisaba.github.io/test-release/ --merge index.yaml anotherchart/.
