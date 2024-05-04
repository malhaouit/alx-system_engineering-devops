# This manifest fixes the apache error occured withing the file wp-settings.php when requesting the apache server

file_line { 'fix_class-wp-locale.phpp':
  path   => '/var/www/html/wp-settings.php',
  line   => "require_once( ABSPATH . WPINC . '/class-wp-locale.php' );",
  match  => "^require_once\\( ABSPATH . WPINC . '/class-wp-locale.phpp' \\);",
  notify => Service['apache2'],
}

service { 'apache2':
  ensure    => running,
  enable    => true,
  subscribe => File_line['fix_class-wp-locale.phpp'],
}
