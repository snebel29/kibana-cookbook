include_recipe "kibana"

kibana_app node['kibana']['service_name'] do
  action [:install, :config]
  download_url node['kibana']['download_url']
end
