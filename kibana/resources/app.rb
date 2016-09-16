actions :install, :config
default_action :install if defined?(default_action)
provides :app if self.respond_to?('provides')

attribute :user,            :kind_of => String
attribute :group,           :kind_of => String
attribute :download_url,    :kind_of => String
attribute :checksum,        :kind_of => String
attribute :install_dir,     :kind_of => String

attribute :config_file,     :kind_of => String
attribute :config_content,  :kind_of => Hash
