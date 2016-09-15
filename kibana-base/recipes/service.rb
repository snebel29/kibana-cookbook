unit_name = "#{node['kibana']['user']}-#{node['kibana']['unit-name']}"
unit = "/lib/systemd/system/#{unit_name}.service"

template unit do
  source 'kibana.service.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :reload, "service[#{unit_name}]", :delayed
end

service unit_name do
  action [:enable, :start]
  provider Chef::Provider::Service::Systemd
  subscribes :restart, "file[#{node['kibana']['config-file']}]", :delayed
  reload_command '/usr/bin/systemctl daemon-reload' 
end
