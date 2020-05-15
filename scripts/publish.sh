# Variables
version=$1

# Install Helm client
wget https://get.helm.sh/helm-v3.2.1-linux-amd64.tar.gz 2&>/dev/null
tar -zxvf helm-v3.2.1-linux-amd64.tar.gz

# Publish
echo "Current DIR:"
pwd
echo "List DIR"
ls
echo "sed"
sed "s/version: .*/version: $version/g" anotherchart/Chart.yaml

sed -i "s/version: .*/version: $version/g" anotherchart/Chart.yaml
linux-amd64/helm package --version "$version" anotherchart/.
linux-amd64/helm repo index --url "https://github.com/gopisaba/test-release/releases/download/v${version}/" --merge index.yaml .
