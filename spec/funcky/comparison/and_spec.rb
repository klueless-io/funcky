# frozen_string_literal: true

# require 'handlebars/helpers/comparison/and'

RSpec.describe Funcky::Comparison::And do
  let(:lhs) { nil }
  let(:rhs) { nil }

  it { is_expected.not_to be_nil }

  # And: Block helper that renders a block if **all of** the given values are truthy. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { described_class.new.parse([lhs, rhs]) }

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
