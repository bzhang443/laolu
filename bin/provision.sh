#!/usr/bin/env bash
sudo apt-get update
sudo apt-get upgrade -y

# MySQL
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev
# sudo mysql_secure_installation
sudo systemctl start mysql

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get install -y nodejs yarn git-core curl \
                        build-essential software-properties-common \
                        libssl-dev libreadline-dev libyaml-dev libxml2-dev \
                        zlib1g-dev libxslt1-dev libcurl4-openssl-dev libffi-dev 

cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.5.1
rbenv global 2.5.1
ruby -v

echo "gem: --no-document" > ~/.gemrc

wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz
tar xvfz geckodriver-v0.23.0-linux64.tar.gz
sudo mv geckodriver /usr/local/bin