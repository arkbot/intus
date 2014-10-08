require 'intus'

describe Module do
  context 'after requiring' do
    it 'exposes class method `inside_module`' do
      expect(Module).to respond_to(:inside_module)
    end

    it 'aliases class method `inside` to the `inside_module` method' do
      expect("#{Module.method(:inside)}").to match(/inside_module/)
    end

    it 'aliases instance method `inside` to the `inside_instance` method' do
      expect("#{Module.instance_method(:inside)}").to match(/inside_instance/)
    end
  end

  context 'when executing `inside_module`' do
    it 'behaves like `module_exec` but additionally returns `self`' do
      result = Module.inside_module do
        def foo
          :foo
        end
      end
      expect(result).to eq(Module)
      expect(Module.instance_method(:foo)).to be_a(UnboundMethod)
    end
  end

  context 'when executing `inside`' do
    it 'class method behaves like `module_exec` but returns `self`' do
      result = Module.inside do
        def foo
          :foo
        end
      end
      expect(result).to eq(Module)
      expect(Module.instance_method(:foo)).to be_a(UnboundMethod)
    end

    it 'instance method behaves like `instance_exec` but returns `self`' do
      result = Module.new.inside do
        def foo
          :foo
        end
      end
      expect(result).to be_a(Module)
      expect(result).to respond_to(:foo)
    end
  end
end
