# # encoding: utf-8

# Inspec test for recipe webserver_test::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80) do
  it { should be_listening }
end

# This is a test to establish if the apache server is installed.
describe package('httpd') do
  it { should be_installed }
end

# Test that the service is enabled & running
describe service('httpd') do
  it { should be_enabled }
  it { should be_running }
end

describe command('curl localhost') do
  its('stdout') { should match /hello/ }
end