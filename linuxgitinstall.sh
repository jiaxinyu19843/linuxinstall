#!/bin/bash

#yum install git-all

git --version

cd /root

wget -O git-lfs.tar.gz https://github.com/github/git-lfs/releases/download/v1.1.0/git-lfs-linux-386-1.1.0.tar.gz

tar -xvzf git-lfs.tar.gz

cd git-lfs-1.1.0/

./install.sh

git lfs install

cd /root

wget --no-check-certificate https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz

tar -xzf Python-2.7.11.tgz

cd Python-2.7.11

./configure

make

make install

export PATH=/usr/local/bin:$PATH

python -V

cd /usr/local/bin

curl http://ctc-infrastructure/yuyang/google_repo/raw/compatible/repo > /usr/local/bin/repo

chmod a+x /usr/local/bin/repo



