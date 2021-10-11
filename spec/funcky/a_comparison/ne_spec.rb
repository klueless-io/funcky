# frozen_string_literal: true

# Ne: # Ne: (not equal) Block helper that renders a block if &#x60;a&#x60; is **not equal to** &#x60;b&#x60;. If an inverse block is specified it will be rendered when falsy.
RSpec.describe Funcky::AComparison::Ne do
  let(:instance) { described_class.new }
  
  describe 'initialize' do
    subject { instance }
  
    it { is_expected.not_to be_nil }
  end

  describe '#parse' do
    subject { instance.parse(value) }

    let(:value) { nil }

    context 'safely handle nil' do
      it { is_expected.to eq('') }
    end
  end
end
