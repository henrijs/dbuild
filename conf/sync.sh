#!/bin/sh
# This file will sync local development environment with the dev server
# SQL from the server + rsync.

drush -vvvv sql-sync @example.prod @example.local
echo 'SQL sync ready.';

drush rsync @example.prod:%files/ drupal/files/
echo 'RSync ready.';

# Download Devel
drush @example.local en devel -y;
echo "Devel module enabled";

# Clear caches
drush @example.local cache-clear all;
echo 'Cahces has been cleared';

# FINISH HIM
say --voice=Zarvox "Sync is now fully completed."
