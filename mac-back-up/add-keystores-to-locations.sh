#!/bin/zsh

echo Toevoegen aan home folders
ln ~/.ssh/key.p12 /Users/Groea10/*/**/resources/security/key.p12
ln ~/.ssh/key.p12 /Users/Groea10/*/**/lib/security/key.p12

echo Toevoegen aan /usr/local/Cellar
ln ~/.ssh/key.p12 /usr/local/Cellar/openjdk/*/**/resources/security/key.p12
ln ~/.ssh/key.p12 /usr/local/Cellar/openjdk/*/**/lib/security/key.p12

echo Toevoegen aan /usr/local/bin/
ln ~/.ssh/key.p12 /usr/local/bin/key.p12
