set -e

yum groupinstall 'Development Tools'
yum install curl file git
yum install libxcrypt-compat # needed by Fedora 30 and up