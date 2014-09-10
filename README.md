This is custom drupal buildscript.

Basic usage:

1. Create and set up new settings file:

$ cp conf/global.settings.php conf/your_site_name.settings.php

2. Tell script that that should be this file to use.

$ export WKV_SITE_ENV=your_site_name.settings.php

3. Run the script

$ ./build.sh new
