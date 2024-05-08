# Fixes the Apache internal server error by replacing .phpp with .php within the file wp-settings.php

exec { 'replace-phpp-with-php':
  command => "sed -i 's/\\.phpp/\\.php/g' /var/www/html/wp-settings.php",
  path    => ['/bin', '/usr/bin'],
  onlyif  => "grep -q '\\.phpp' /var/www/html/wp-settings.php",
}
