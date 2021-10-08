# frozen_string_literal: true

RSpec.describe Funcky::Comparison::Lt do
  # Lt: (less than) Block helper that renders a block if `a` is **less than** `b`. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { described_class.new.parse(lhs, rhs) }

    context 'as number' do
      let(:lhs) { 1 }
      let(:rhs) { 1 }

      context '1 < 1' do
        it { is_expected.to be_falsey }
      end
      context '0 < 1' do
        let(:lhs) { 0 }
        it { is_expected.to be_truthy }
      end
    end
    context 'as string' do
      let(:lhs) { 'b' }
      let(:rhs) { 'b' }

      context 'b < b' do
        it { is_expected.to be_falsey }
      end
      context 'a < b' do
        let(:lhs) { 'a' }
        it { is_expected.to be_truthy }
      end
    end
  end
end
