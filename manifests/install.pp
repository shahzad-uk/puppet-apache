# @summary 
# Installs the base Apache package
#
class apache::install {
  package { 'apache2':
    ensure => 'present',
  }
}
