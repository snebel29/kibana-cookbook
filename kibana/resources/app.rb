actions :install
attribute :user, :kind_of => String

provides :app

def initialize(*args)
  super
  @user = user
end
