#!/bin/bash
clear
echo "Setting SDKMAN! environment..."
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
echo "Upgrading with SDKMAN!..."
sdk upgrade
echo "Ready!"
