##################
Installation Focal
##################

# Core install
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent

# Python tools
sudo apt install libbz2-dev liblzma-dev lzma tcl tk tk-dev

# Computer Information
sudo apt install inxi neofetch glances htop ncdu

# Battery
sudo apt install tlp tlp-rdw
sudo apt install tp-smapi-dkms acpi-call-dkms

# Development kit
sudo apt install tmux silversearcher-ag exuberant-ctags xclip wl-clipboard youtube-dl ffmpeg httpie firefox-geckodriver neovim net-tools ripgrep

# DB
sudo apt install sqlite3 redis
sudo apt install postgresql libpq-dev
sudo -u postgres createuser rustyworks -s

# i3
sudo apt install i3 feh fonts-font-awesome rofi pulseaudio-utils xblacklight alsa-tools locate libnotify-bin scrot i3blocks i3status ranger xbindkeys xsel xdotool

# pyenv
# Bash
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
sed -Ei -e '/^([^#]|$)/ {a \
export PYENV_ROOT="$HOME/.pyenv"
a \
export PATH="$PYENV_ROOT/bin:$PATH"
a \
' -e ':a' -e '$!{n;ba};}' ~/.profile
echo 'eval "$(pyenv init --path)"' >>~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
# Zsh
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zprofile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile

echo 'eval "$(pyenv init -)"' >> ~/.zshrc

# rubyenv
cd && git clone https://github.com/rbenv/rbenv.git ~/.rbenv && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && echo 'eval "$(rbenv init -)"' >> ~/.bashrc && exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build && echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc && exec $SHELL
rbenv install 3.0.2 && rbenv global 3.0.2 && ruby -v


















####
brew
####

# Computer information
inxi
neofetch
glances

# Sandbox Development
rbenv ruby-build ruby-dev
pyenv

# DB
sqlite
redis

# Tools
tmux
tldr
the_silver_searcher
ctags
whois
xclip
youtube-dl
ffmpeg
httpie
ncdu
htop
nmap
httrack
elasticsearch
geckodriver

###
i3
###

i3 feh fonts-font-awesome rofi pulseaudio-utils xblacklight alsa-tools locate libnotify-bin scrot i3blocks i3status ranger
xbindkeys xsel xdotool

###
apt
###

# Essential
curl
git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
apt-transport-https ca-certificates curl gnupg-agent

# Other tools for Python
bzip libbz2-dev liblzma-dev lzma

# Tools
neovim

# Terminal
cool-retro-term
gnome-terminal

# Battery
tlp tlp-rdw
tp-smapi-dkms acpi-call-dkms

# Diskcheckup
sudo apt install smartmontools

# Docker (see the tutorial for this)
docker-cli
docker compose

# Java
openjdk-8-jdk
openjdk-8-jre


#####################
github && Othersource
#####################

fzf
linuxbrew
https://github.com/tmux-plugins/tpm

Vagrant


#######
Flatpak
#######

Firefox
Postman
gimp
VLC
zeal


####################
change keyboard caps
####################
sudo vim /etc/default/keyboard
XKBLAYOUT=us
BACKSPACE=guess
XKBOPTIONS="ctrl:nocaps"

sudo vim /usr/share/applications/io.elementary.appcenter-daemon.desktop  # Remove popos update
sudo vim /usr/share/nvim/runtime/indent/html.vim  # Add "p" tag to valid html tag

# Firewall
sudo systemctl start ufw
sudo systemctl enable ufw
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw allow ssh
sudo ufw allow 80/tcp
sudo ufw allow http/tcp
sudo ufw allow 443/tcp
sudo ufw allow https/tcp
sudo ufw enable
sudo ufw status

# Unlink gcc for native build
brew unlink gcc


# pip
pip install JLDracula
pip install jupyterlab_vim

Online Tools:
Password management (price?)
Github/Gitlab account (free?)
Linode (free tier heroku vs $5 smallest droplet on digital ocean)
Domain name: rusty.works, tristanto.me, pythonesia.com (from namecheap) 50 dollar per year
Mail gun (price?)
Twilio (price?)
Private mail? (price?)


# Logrotate example config

"/home/ubuntu/path/shared/log/production.log" {
  daily
  missingok
  rotate 60
  compress
  delaycompress
  notifempty
  copytruncate
  su ubuntu ubuntu
}
