#
# Cookbook:: webserver_test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package_name =
  service_name =
    case node['platform']
    when 'centos' then 'httpd'
    when 'ubuntu' then 'apache2'
    end
# Install the Apache package.
package package_name

# Enable and start the service
service service_name do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>Hello, world</h1>
  </body>
</html>'
end
