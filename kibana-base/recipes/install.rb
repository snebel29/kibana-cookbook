ark "#{node['kibana']['unit-name']}-#{node['kibana']['version']}" do
  url node['kibana']['download_url']
  owner node['kibana']['user']
  group node['kibana']['group']
  path node['kibana']['install-dir']
  checksum node['kibana']['checksum']
  action :dump
end
