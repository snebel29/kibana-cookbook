user 'kibana_user' do
  username node['kibana']['user']
  comment 'Local Kibana user'
  shell '/sbin/nologin'
  manage_home false
  action :create
  system true
end

group 'kibana_group' do
  group_name node['kibana']['group']
  action :create
  system true
end
