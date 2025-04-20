#!/bin/bash

read -p "Do you want to uninstall cargo-dist? (yes/no): " response
if [[ "$response" == "yes" ]]; then
    echo "Uninstalling cargo-dist..."
    cargo uninstall cargo-dist
else
    echo "Aborting uninstallation."
fi