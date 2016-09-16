actions :install
attribute :user, :kind_of => String

provides :the_application

def initialize(*args)
  super
  @user = user
end
