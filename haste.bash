#!/bin/bash
#place this file in your path. then send stdoud to | haste

#optional for ldap or other simple auth in the format user.name:password@ (you need the @ after)
if [ -f ~/.hidden_password ]
then
    password="$(< ~/.hidden_password)"
fi

#change this to your haste server
url="hastebin.com"
key="$(curl --silent --insecure --data-binary @/dev/fd/0  https://"$password""$url"/documents | cut -d "\"" -f 4)"

echo "https://"$url"/"$key""
