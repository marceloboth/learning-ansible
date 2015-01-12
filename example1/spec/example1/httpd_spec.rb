require 'spec_helper'

# this checks if package apache2 is installed
describe package 'apache2' do
  it { should be_installed }
end

# this checks if service is enabled and running
describe service 'apache2' do
  it { should be_enabled }
  it { should be_running }
end

# this checks the port apache2 is running on
describe port 80 do
  it { should be_listening }
end

# this checks for existence of apache2.conf
describe file '/etc/apache2/apache2.conf' do
  it { should be_file }
end
