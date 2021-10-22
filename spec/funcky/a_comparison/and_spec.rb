# frozen_string_literal: true

# And: 
RSpec.describe Funcky::AComparison::And do
  let(:instance) { described_class.new }

  let(:lhs) { nil }
  let(:rhs) { nil }

  describe 'initialize' do
    subject { instance }
  
    it { is_expected.not_to be_nil }
  end

   # And: Block helper that renders a block if **all of** the given values are truthy. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { instance.parse([lhs, rhs]) }

    context 'nil && nil' do
      it { is_expected.to be_falsey }
    end
    context 'data && nil' do
      let(:lhs) { 'data' }
      it { is_expected.to be_falsey }
    end
    context 'nil && data' do
      let(:rhs) { 'data' }
      it { is_expected.to be_falsey }
    end
    context 'data && data' do
      let(:lhs) { 'data' }
      let(:rhs) { 'data' }
      it { is_expected.to be_truthy }
    end
  end

end
