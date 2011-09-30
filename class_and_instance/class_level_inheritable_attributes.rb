################
###### http://railstips.org/blog/archives/2008/06/12/a-class-instance-variable-update/
################
module ClassLevelInheritableAttributes
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def cattr_inheritable(*args)
      @cattr_inheritable_attrs ||= [:cattr_inheritable_attrs]
      @cattr_inheritable_attrs += args
      args.each do |arg|
        class_eval %(
          class << self; attr_accessor :#{arg} end
        )
      end
      @cattr_inheritable_attrs
    end

    def inherited(subclass)
      @cattr_inheritable_attrs.each do |inheritable_attribute|
        instance_var = "@#{inheritable_attribute}" 
        subclass.instance_variable_set(instance_var, instance_variable_get(instance_var))
      end
    end
  end
end


module AAWS
  class Base
    include ClassLevelInheritableAttributes
    
    cattr_inheritable :default_params
    @default_params = {:service => 'AWSECommerceService'}
    # other code removed for clarity ...
  end
end

