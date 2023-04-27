#!/bin/bash

# Install Recommended Plugins
wp plugin install --activate disable-comments
wp disable-comments settings --types=all
wp disable-comments delete --types=all

# Remove Unwanted Plugins
wp plugin uninstall hello

# Set Permalink Structure
wp rewrite structure /%category%/%postname%/   