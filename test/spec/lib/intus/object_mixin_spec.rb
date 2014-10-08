require 'intus'

describe Object do
  let(:some_object) { Object.new }

  context 'after requiring' do
    it 'exposes class method `inside_class`' do
      expect(Object).to respond_to(:inside_class)
    end

    it 'exposes instance method `inside_instance`' do
      expect(Object.new).to respond_to(:inside_instance)
    end

    it 'aliases class method `inside` to the `inside_class` method' do
      expect("#{Object.method(:inside)}").to match(/inside_class/)
    end

    it 'aliases instance method `inside` to the `inside_instance` method' do
      expect("#{Object.new.method(:inside)}").to match(/inside_instance/)
    end
  end

  context 'when executing `inside`' do
    it 'class method behaves like `class_exec` but returns `self`' do
      result = Object.inside do
        def foo
          :foo
        end
      end
      expect(result).to eq(Object)
      expect(Object.instance_method(:foo)).to be_a(UnboundMethod)
    end

    it 'instance method behaves like `instance_exec` but returns `self`' do
      result = Object.new.inside do
        def foo
          :foo
        end
      end
      expect(result).to be_a(Object)
      expect(result).to respond_to(:foo)
    end
  end
end
