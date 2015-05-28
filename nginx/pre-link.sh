#!/bin/bash -eux


user=nginx

if ! $(grep -q "^$user:" /etc/group); then
    /usr/sbin/groupadd $user
fi

if ! $(grep -q "^$user:" /etc/passwd); then
    /usr/sbin/useradd -g $user $user
fi


mkdir -pm 02775 /var/log/$user
chown $user:$user /var/log/$user
mkdir -pm 02775 /var/run/$user
chown $user:$user /var/run/$user

mkdir /etc/nginx
