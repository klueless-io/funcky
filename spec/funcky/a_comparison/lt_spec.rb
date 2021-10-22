# frozen_string_literal: true

# Lt: # Lt: (less than) Block helper that renders a block if &#x60;a&#x60; is **less than** &#x60;b&#x60;. If an inverse block is specified it will be rendered when falsy.
RSpec.describe Funcky::AComparison::Lt do
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
  # Lt: (less than) Block helper that renders a block if `a` is **less than** `b`. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do
    subject { instance.parse(lhs, rhs) }

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
