# Use shasum -a 256 to get the checksum

default['kibana']['user'] = 'kibana'
default['kibana']['group'] = 'kibana'
default['kibana']['home'] = "/opt/#{node['kibana']['user']}"

default['kibana']['version'] = '4.5.0'
default['kibana']['checksum'] = 'fa3f675febb34c0f676f8a64537967959eb95d2f5a81bc6da17aa5c98b9c76ef'
default['kibana']['download_url'] = 'https://download.elastic.co/kibana/kibana/kibana-4.5.0-linux-x64.tar.gz'

default['kibana']['unit-name'] = 'default'
default['kibana']['directory'] = "#{node['kibana']['unit-name']}"
default['kibana']['install-dir'] = "#{File.join(node['kibana']['home'], node['kibana']['directory'])}"

# Workaround
folder = node['kibana']['download_url'].split('/').last.gsub('.tar.gz', '')
default['kibana']['config-file'] = File.join(node['kibana']['install-dir'], folder, 'config', 'kibana.yml')
