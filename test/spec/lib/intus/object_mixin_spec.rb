require 'intus'

describe Object do
  def mock(klazz_or_instance)
    klazz_or_instance.inside do
      def foo
        self
      end
    end
  end

  context 'after requiring' do
    context 'on class' do
      it 'exposes `inside_class`' do
        expect(Object).to respond_to(:inside_class)
      end

      it 'aliases `inside` to `inside_class`' do
        expect("#{Object.method(:inside)}").to match(/inside_class/)
      end
    end

    context 'on instance' do
      it 'exposes `inside_instance`' do
        expect(Object.new).to respond_to(:inside_instance)
      end

      it 'aliases `inside` to `inside_instance`' do
        expect("#{Object.new.method(:inside)}").to match(/inside_instance/)
      end
    end
  end

  context 'when executing `inside`' do
    context 'on class' do
      it 'behaves like `class_exec` but returns `self`' do
        result = mock(Object)
        expect(result).to eq(Object)
        expect(result).to respond_to(:foo)
      end
    end

    context 'on instance' do
      it 'behaves like `instance_exec` but returns `self`' do
        result = mock(Object.new)
        expect(result).to be_a(Object)
        expect(result).to respond_to(:foo)
      end
    end
  end
end
