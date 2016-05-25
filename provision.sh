# Install core
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev


# Install ruby
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

rbenv install 2.2.3
rbenv global 2.2.3
ruby -v

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler

# DO THIS MANUALLY
# Setting git
# git config --global color.ui true
# git config --global user.name "<insert your username>"
# git config --global user.email "<insert your email>"
# ssh-keygen -t rsa -C "<insert your email>"
# cat ~/.ssh/id_rsa.pub
# ssh -T git@github.com

# Install node
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

# Install rails
gem install rails -v 4.2.4

# install postgre
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.3 libpq-dev

# DO THIS MANUALLY
# Setting Postgres
# sudo -u postgres createuser <insert your name> -s

# PASSWORD
# sudo -u postgres psql
# postgres=# \password <insert your password>

# Install third party tools for developers
sudo apt-get install tree
sudo apt-get install screen
sudo apt-get install htop
sudo apt-get install youtube-dl
