actions :open

attribute :name, :kind_of => String, :name_attribute => true
attribute :description, :kind_of => String, :default => 'Firewall rule'
attribute :localip, :kind_of => String, :default => 'Any'
attribute :localport, :kind_of => String, :default => 'Any'
attribute :remoteip, :kind_of => String, :default => 'Any'
attribute :remoteport, :kind_of => String, :default => 'Any'
attribute :dir, :kind_of => Symbol, :default => :in, :equal_to => [:in, :out] # will change to dir later
attribute :protocol, :kind_of => Symbol, :default => :TCP, :equal_to => [:TCP]
attribute :firewall_action, :kind_of => Symbol, :default => :allow, :equal_to => [:allow, :deny]
attribute :profile, :kind_of => Symbol, :default :any, :equal_to => [:public, :private, :domain, :any]
attribute :program, :kind_of => String, :default => 'Any'
attribute :service, :kind_of => String, :default => 'Any'
attribute :interface_type, :kind_of => Symbol, :default => :any, :equal_to => [ :any, :wireless, :lan, :ras ]


def initialize(*args)
  super
  @action = :open
end
