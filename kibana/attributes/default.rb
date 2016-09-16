# Use shasum -a 256 to get the checksum

default['kibana']['user'] = 'kibana'
default['kibana']['group'] = 'kibana'

default['kibana']['version'] = '4.5.0'
default['kibana']['checksum'] = 'fa3f675febb34c0f676f8a64537967959eb95d2f5a81bc6da17aa5c98b9c76ef'
default['kibana']['download_url'] = 'https://download.elastic.co/kibana/kibana/kibana-4.5.0-linux-x64.tar.gz'

default['kibana']['service_name'] = 'default'
default['kibana']['install_dir'] = File.join('/opt', node['kibana']['user'], node['kibana']['service_name'], node['kibana']['version'])
default['kibana']['config_file'] = File.join(node['kibana']['install_dir'], 'config', 'kibana.yml')
