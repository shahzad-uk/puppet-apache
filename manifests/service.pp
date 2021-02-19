# @summary
# Allows for the Apache service to restart when triggered
class apache::service {
# Schedule set the time this module can run druing the defined period. I suppose this is how we control MW?
#  schedule { 'everyday':
#    period => daily,
#    range  => "0-23",
#  }
  service { "${apache::service_name}":
# Instead of calling the resource by hiera name, we can create an alias for it.
#    alias      => 'apache_service',
   ensure     => $apache::service_name,
   enable     => $apache::service_enable,
   hasrestart => true,
#    audit      => 'hasrestart',
# before creates a relationship where puppet would run config class before service class
 #   before     => File["apache_config"],
# We can set log level for an individual resource, options are warn, debug etc..
#    loglevel   => err,
#    schedule   => everyday,
  }
}
