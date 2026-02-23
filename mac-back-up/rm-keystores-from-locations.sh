#!/bin/zsh

echo Verwijderen  uit home folders
rm -f /Users/Groea10/*/**/resources/security/key.p12
rm -f /Users/Groea10/*/**/lib/security/key.p12

echo Verwijderen uit /usr/local/Cellar
rm -f /usr/local/Cellar/openjdk/*/**/resources/security/key.p12
rm -f /usr/local/Cellar/openjdk/*/**/lib/security/key.p12

echo Verwijderen uit /usr/local/bin/
rm -f /usr/local/bin/key.p12
