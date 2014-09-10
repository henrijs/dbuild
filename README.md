This is custom drupal buildscript.

Basic usage:

$ /build.sh new - Create a new fresh build ready for installation
$ /build.sh update - Update current build
$ /build.sh purge - Clean up the current build
$ /build.sh clean - Remove old builds.

Add new modules/libraries/themes in site.make file.
Fork and update WK installation profile.


Setup:

1. Create and set up new settings file:

$ cp conf/global.settings.php conf/your_site_name.settings.php

2. Tell script that that should be this file to use.

$ export WKV_SITE_ENV=your_site_name

3. Run the script

$ ./build.sh new


If you are using OSX you will not be able to create sql dumps for your builds. For now...
