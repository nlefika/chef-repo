#
# Cookbook:: webserver_test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install the Apache package.
package 'httpd'

service 'httpd' do
  action [:enable, :start]
end