require "chef/resource"

use_inline_resources

def whyrun_supported?
  true
end

def load_current_resource
  @user = new_resource.user || node['kibana']['user']
end

action :install do
  puts @user
end

