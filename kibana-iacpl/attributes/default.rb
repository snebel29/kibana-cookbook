default['iacpl']['bu'] = 'iacpl'
default['kibana']['config']['port'] = 5603

default['kibana']['version'] = '3.0.1'
default['kibana']['checksum'] = 'c6a91921a0055714fd24fb94a70b7057f43492da6bd8c4f2f1acbf0964bf09b9'
default['kibana']['download_url'] = 'http://depot.iad.ask.com/3p-source-repo/kibana/kibana-4.3.1-linux-x64.tar.gz'

default['kibana']['unit-name'] = node['iacpl']['bu']
default['kibana']['install-dir'] = "#{node['kibana']['home']}"
default['kibana']['config-file'] = File.join(node['kibana']['install-dir'], 'config', 'kibana.yml')
