module Intus
  module ClassMixin
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def inside_class(*args, &block)
        class_exec(*args, &block)
        self
      end
      alias_method :inside, :inside_class
    end

    def inside_class(*args, &block)
      class_exec(*args, &block)
      self
    end
    alias_method :inside, :inside_class

    Class.include(self)
  end
end
