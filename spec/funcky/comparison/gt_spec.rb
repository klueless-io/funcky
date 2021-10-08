# frozen_string_literal: true

RSpec.describe Funcky::Comparison::Gt do
  # Gt: (greater than) Block helper that renders a block if `a` is **greater than** `b`. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { described_class.new.parse(lhs, rhs) }

    context 'as number' do
      let(:lhs) { 1 }
      let(:rhs) { 1 }

      context '1 > 1' do
        it { is_expected.to be_falsey }
      end

      context '2 > 1' do
        let(:lhs) { 2 }
        it { is_expected.to be_truthy }
      end
    end

    context 'as string' do
      let(:lhs) { 'b' }
      let(:rhs) { 'b' }

      context 'b > b' do
        it { is_expected.to be_falsey }
      end

      context 'b > a' do
        let(:rhs) { 'a' }
        it { is_expected.to be_truthy }
      end
    end
  end
end
