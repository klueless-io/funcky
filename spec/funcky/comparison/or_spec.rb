# frozen_string_literal: true

RSpec.describe Funcky::Comparison::Or do
  let(:lhs) { nil }
  let(:rhs) { nil }

  # Or: Block helper that renders a block if **any of** the given values is truthy. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { described_class.new.parse([lhs, rhs]) }

    context 'nil || nil' do
      it { is_expected.to be_falsey }
    end
    context 'data || nil' do
      let(:lhs) { 'data' }
      it { is_expected.to be_truthy }
    end
    context 'nil || data' do
      let(:rhs) { 'data' }
      it { is_expected.to be_truthy }
    end
    context 'data || data' do
      let(:lhs) { 'data' }
      let(:rhs) { 'data' }
      it { is_expected.to be_truthy }
    end
  end
end
