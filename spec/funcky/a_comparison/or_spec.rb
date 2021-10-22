# frozen_string_literal: true

# Or: 
RSpec.describe Funcky::AComparison::Or do
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

  # Or: Block helper that renders a block if **any of** the given values is truthy. If an inverse block is specified it will be rendered when falsy.
  describe '#parse' do

    let(:lhs) { nil }
    let(:rhs) { nil }
  
    subject { instance.parse([lhs, rhs]) }

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

      # binding.pry

      it { is_expected.to be_truthy }
    end
  end

end
