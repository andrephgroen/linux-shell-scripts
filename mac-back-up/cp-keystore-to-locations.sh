#!/bin/zsh

echo Toevoegen aan home folders
cp -v -f /usr/local/Cellar/openliberty-jakartaee8/23.0.0.12/libexec/usr/servers/ahm-server/resources/security/key.p12 /Users/Groea10/*/**/resources/security/key.p12

echo Toevoegen aan /usr/local/Cellar
cp -v -f /usr/local/Cellar/openliberty-jakartaee8/23.0.0.12/libexec/usr/servers/ahm-server/resources/security/key.p12 /usr/local/Cellar/openjdk/*/**/resources/security/key.p12

echo Toevoegen aan /usr/local/bin/
cp -v -f /usr/local/Cellar/openliberty-jakartaee8/23.0.0.12/libexec/usr/servers/ahm-server/resources/security/key.p12 /usr/local/bin/key.p12
