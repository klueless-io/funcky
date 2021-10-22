# frozen_string_literal: true

# Lte: # Lte: (less than or equal to) Block helper that renders a block if &#x60;a&#x60; is **less than or equal to** &#x60;b&#x60;. If an inverse block is specified it will be rendered when falsy.
RSpec.describe Funcky::AComparison::Lte do
  let(:instance) { described_class.new }
  
  describe 'initialize' do
    subject { instance }
    it { is_expected.not_to be_nil }
  end

  # describe '#parse' do
  #   subject { instance.parse(value) }

  #   let(:value) { nil }

  #   context 'safely handle nil' do
  #     it { is_expected.to eq('') }
  #   end
  # end

  # Lte: (less than or equal to) Block helper that renders a block if `a` is **less than or equal to** `b`. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { instance.parse(lhs, rhs) }

    context 'as number' do
      let(:lhs) { 1 }
      let(:rhs) { 1 }

      context '1 <= 2' do
        let(:rhs) { 2 }
        it { is_expected.to be_truthy }
      end
      context '1 <= 1' do
        it { is_expected.to be_truthy }
      end
      context '0 <= 1' do
        let(:lhs) { 0 }
        it { is_expected.to be_truthy }
      end
    end

    context 'as string' do
      let(:rhs) { 'b' }

      context 'c <= b' do
        let(:lhs) { 'c' }
        it { is_expected.to be_falsey }
      end

      context 'b <= b' do
        let(:lhs) { 'b' }
        it { is_expected.to be_truthy }
      end

      context 'a <= b' do
        let(:lhs) { 'a' }
        it { is_expected.to be_truthy }
      end

    end
  end
end
