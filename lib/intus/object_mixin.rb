require 'intus/support'

module Intus
  module ObjectMixin
    def inside_class(*args, &block)
      class_exec(*args, &block)
      self
    end

    def inside_instance(*args, &block)
      instance_exec(*args, &block)
      self
    end
    alias_method :inside, :inside_instance

    Object.include(self)
  end
end
