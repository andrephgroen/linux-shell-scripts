#!/bin/zsh
clear
echo "Setting SDKMAN! environment..."
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
echo "Upgrading with SDKMAN!..."
sdk upgrade
echo "Ready!"
