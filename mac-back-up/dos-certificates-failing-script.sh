#!/bin/zsh
export CACERTS="/home/user/cacerts"
cd /etc/ssl/certs
for file in *.pem; do
   echo "Importing $file..."
   openssl x509 -outform der -in "$file" -out /tmp/certificate.der
   keytool -import -alias "$file" -keystore $CACERTS \
           -file /tmp/certificate.der -deststorepass changeit -noprompt
done
