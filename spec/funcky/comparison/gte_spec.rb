# frozen_string_literal: true

RSpec.describe Funcky::Comparison::Gte do
  # Gte: (greater than or equal to) Block helper that renders a block if `a` is **greater than** `b`. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { described_class.new.parse(lhs, rhs) }

    context 'as number' do
      let(:lhs) { 1 }
      let(:rhs) { 1 }

      context '1 >= 2' do
        let(:rhs) { 2 }
        it { is_expected.to be_falsey }
      end
      context '1 >= 1' do
        it { is_expected.to be_truthy }
      end
      context '1 >= 0' do
        let(:rhs) { 0 }
        it { is_expected.to be_truthy }
      end
    end
    context 'as string' do
      let(:rhs) { 'b' }

      context 'c >= b' do
        let(:lhs) { 'c' }
        it { is_expected.to be_truthy }
      end
      context 'b >= b' do
        let(:lhs) { 'b' }
        it { is_expected.to be_truthy }
      end
      context 'a >= b' do
        let(:lhs) { 'a' }
        it { is_expected.to be_falsey }
      end
    end
  end
end
