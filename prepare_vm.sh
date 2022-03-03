#!/bin/bash 

# $1 username 
# $2 password

# add user 
useradd $1 

# set password for user 
echo "$1:$2" | sudo chpasswd 

# add user to group wheel 
usermod -a -G wheel $1

# set no_passwd
cat /etc/sudoers | grep "# %wheel" | sed -e 's/# %wheel/ %vlad/g' >  /etc/sudoers.d/no_passwd
