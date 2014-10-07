module Intus
  module ModuleMixin
    def inside_module(*args, &block)
      module_exec(*args, &block)
      self
    end
    alias_method :inside, :inside_module

    Module.include(self)
  end
end
