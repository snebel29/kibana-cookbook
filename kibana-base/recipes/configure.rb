file node['kibana']['config-file'] do
  content YAML.dump(node['kibana']['config'].to_hash)
  owner node['kibana']['user']
  group node['kibana']['group']
  mode '0755'
end
