#use_inline_resources

def load_current_resource
  @user           = new_resource.user || node['kibana']['user']
  @group          = new_resource.group || node['kibana']['group']
  @version        = new_resource.group || node['kibana']['version']
  @download_url   = new_resource.download_url || node['kibana']['download_url']
  @checksum       = new_resource.checksum || node['kibana']['checksum']
  @service_name   = new_resource.checksum || node['kibana']['service_name']
  @install_dir    = new_resource.install_dir || node['kibana']['install_dir']
  @config_file    = new_resource.config_file || node['kibana']['config_file']
  @config         = new_resource.config_content || node['kibana']['config']
end

action :install do

  # Necessary to deal with variable scoping issues in resources below
  user = @user
  group = @group
  version = @version
  download_url = @download_url
  checksum = @checksum
  service_name = @service_name
  install_dir = @install_dir
  config_file = @config_file

  self.instance_variables.each do |var|
    puts "#{var} => #{self.instance_variable_get(var)}"
  end

  user 'kibana_user' do
    username user
    comment 'Local Kibana user'
    shell '/sbin/nologin'
    manage_home false
    action :create
    system true
  end

  group 'kibana_group' do
    group_name group
    action :create
    system true
  end
  
  ark '' do
    url download_url
    owner user
    group group
    path install_dir
    checksum checksum
    action :put
  end

  unit = "/lib/systemd/system/#{service_name}.service"

  template "#{unit}" do
    source 'kibana.service.erb'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :reload, "service[#{service_name}]", :delayed
  end

  service "#{service_name}" do
    action [:enable, :start]
    provider Chef::Provider::Service::Systemd
    subscribes :restart, "file[#{config_file}]", :delayed
    reload_command '/usr/bin/systemctl daemon-reload' 
  end

end

action :config do

  # Necessary to deal with variable scoping issues in resources below

  config_file = @config_file
  config = @config

  file "#{config_file}" do
    content YAML.dump(config.to_hash)
    owner user
    group group
    mode '0755'
  end

end

