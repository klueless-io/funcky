# frozen_string_literal: true

# Gt: 
RSpec.describe Funcky::AComparison::Gt do
  let(:instance) { described_class.new }
  
  describe 'initialize' do
    subject { instance }
  
    it { is_expected.not_to be_nil }
  end

  describe '#parse' do
    subject { instance.parse(lhs, rhs) }

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

    context 'as symbol' do
      let(:lhs) { :b }
      let(:rhs) { :b }

      context 'b > b' do
        it { is_expected.to be_falsey }
      end

      context 'b > a' do
        let(:rhs) { :a }
        it { is_expected.to be_truthy }
      end
    end
  end
end
