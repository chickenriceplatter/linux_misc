install languages and libraries
===

python
---
```bash
download anaconda python installer
chmod +x python.sh
./python.sh
```

ruby
---
```bash
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby

source /home/dave/.rvm/scripts/rvm #in .zshrc
```