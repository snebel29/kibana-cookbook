
major_version = node['kibana']['version'].split('.').first

case major_version
when '3'
  include_recipe "#{cookbook_name}::user"
  include_recipe "#{cookbook_name}::install"
  include_recipe "#{cookbook_name}::configure"
  include_recipe "#{cookbook_name}::service"
when '4'
  include_recipe "#{cookbook_name}::user"
  include_recipe "#{cookbook_name}::install"
  include_recipe "#{cookbook_name}::configure"
  include_recipe "#{cookbook_name}::service"
else
  raise "Version not recognized"
end
