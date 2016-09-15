user 'kibana_user' do
  username node['kibana']['user']
  comment 'Local Kibana user'
  home node['kibana']['home']
  shell '/bin/bash'
  supports manage_home: false
  action :create
  system true
end

group 'kibana group' do
  group_name node['kibana']['group']
  action :create
  system true
end
