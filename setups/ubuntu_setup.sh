# Ubuntu based container image setup

# Install packages
echo "Installing main packages."
apt-get update
apt-get install -y openssh-server openssh-client git vim tree python3 python3-pip fish sudo tmux curl

# Setup SSH
mkdir /run/sshd

# Setup User
echo "Setting up user."
adduser --disabled-password --shell /usr/bin/fish --gecos "" nuric
addgroup nuric sudo
