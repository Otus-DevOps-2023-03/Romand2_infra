# Romand2-infra
Romand2 Infra repository


#Home work 2

### Create ssh-key

```sh
ssh-keygen -t rsa -f ~/.ssh/appuser -C appuser -P ""
cat ~/.ssh/appuser.pub
```

### SSH Forwarding

```sh
ssh-add -L
```
Add key

```sh
ssh-add ~/.ssh/appuser
```


### Connect to somehost with bastion

1. With ProxyJump ssh flag:
    `ssh -A -J <bastion_host> <internal_host>`

2. With ssh-config
    Create `~/.ssh/config:

    ```sh
    Host bastion
    HostName <bastion...IP>
    User appuser

    Host internal-host
    HostName  <some...ip>
    ProxyJump bastion
    User appuser
    ```

## VPN Installation

onnect to bastion host and run:

```sh
cat <<': cat <<EOF> setupvpn.sh
#!/bin/bash -e
echo "deb http://repo.pritunl.com/stable/apt jammy main" | sudo tee /etc/apt/sources.list.d/pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
curl https://raw.githubusercontent.com/pritunl/pgp/master/pritunl_repo_pub.asc | sudo apt-key add -
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc |  gpg --dearmor | sudo tee /usr/share/keyrings/mongodb.gpg > /dev/null
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt update
apt update
apt install -y wireguard wireguard-tools
ufw disable
apt install -y pritunl mongodb-org
systemctl enable mongod pritunl
systemctl start mongod pritunl
EOF
chmod +x setupvpn.sh
./setupvpn.sh
```
After install open `https://<bastion_host>/login` in browser
On bastionhost set mongo-db uri:
```sh
   sudo pritunl set-mongodb mongodb://localhost:27017/pritunl
   sudo pritunl setup-key
```

Copy generated key to browser
Generate default-password:
```sh
    sudo pritunl default-password
```
Copy generated username and password to browser
# Add LetsEncrypt SSL Certificate

Add domain <ip>.sslip.io in pritunl

Example:
59.90.323.234.sslip.io

# Ips

bastion_IP = 84.201.135.46
someinternalhost_IP = 10.128.0.7
