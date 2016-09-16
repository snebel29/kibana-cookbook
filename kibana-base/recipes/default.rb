major_version = node['kibana']['version'].split('.').first
include_recipe "#{cookbook_name}::user"

case major_version
when '3'
  #include_recipe "apache2"
  #include_vhost  "kibana-$bu"
when '4'
else
  raise "Version not recognized"
end
