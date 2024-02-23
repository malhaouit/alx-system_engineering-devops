# This manifest installs Flask version 2.1.0 using pip3

package { 'Flask':
  ensure   => '2.1.0',             # Specify the version of the package to install
  provider => 'pip3',              # Specify the package provider
}
