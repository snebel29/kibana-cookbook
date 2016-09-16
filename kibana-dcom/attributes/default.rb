default['iacpl']['bu'] = 'dcom'
default['kibana']['config']['port'] = 5601

default['kibana']['version'] = '4.5.0'
default['kibana']['checksum'] = 'fa3f675febb34c0f676f8a64537967959eb95d2f5a81bc6da17aa5c98b9c76ef'
default['kibana']['download_url'] = "http://depot.iad.ask.com/3p-source-repo/kibana/kibana-#{node['kibana']['version']}-linux-x64.tar.gz"

default['kibana']['service_name'] = "kibana-#{node['iacpl']['bu']}"
default['kibana']['install_dir'] = File.join('/opt', 'kibana', node['iacpl']['bu'], node['kibana']['version'])
default['kibana']['config_file'] = File.join(node['kibana']['install_dir'], 'config', 'kibana.yml')
