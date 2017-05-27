# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application

if Object.const_defined?(:Encoding) && !ENV['LANG'] && !ENV['RUBYOPT'].include?('-E')
  Encoding.default_internal = 'utf-8'
  Encoding.default_external = 'utf-8'
end
