module Intus
  module ModuleMixin
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def inside_module(*args, &block)
        module_exec(*args, &block)
        self
      end
      alias_method :inside, :inside_module
    end

    Module.include(self)
  end
end
