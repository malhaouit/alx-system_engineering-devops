# This manifest fixes the apache error occured withing the file wp-settings.php when requesting the apache server

exec { 'replace-phpp-with-php':
  command => "sed -i 's/\\.phpp/\\.php/g' /var/www/html/wp-settings.php",
  path    => ['/usr/bin', '/bin'],
  onlyif  => "grep -q '\\.phpp' /var/www/html/wp-settings.php",
}
