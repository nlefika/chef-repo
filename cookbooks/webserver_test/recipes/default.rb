#
# Cookbook:: webserver_test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install the Apache package.
package 'httpd'

# Enable and start the service
service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>Hello, world</h1>
  </body>
</html>'
end
