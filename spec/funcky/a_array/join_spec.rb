# frozen_string_literal: true

# Join: join an array of values with separator as a string
RSpec.describe Funcky::AArray::Join do
  let(:instance) { described_class.new }
  
  describe 'initialize' do
    subject { instance }
  
    it { is_expected.not_to be_nil }
  end

  describe '#parse' do
    subject { instance.parse(value) }

    let(:value) { nil }

    context 'safely handle nil' do
      it { is_expected.to eq('') }
    end

    context 'when array of string' do
      let(:value) { %w[the quick fox] }

      it { is_expected.to eq('the,quick,fox') }
      # it { expect(Funcky::AArray::Join.new.parse(['the', 'quick', 'fox'])).to eq('the,quick,fox') }      
    end

    context 'when array of numbers' do
      let(:value) { [1, 2, 3] }

      it { is_expected.to eq('1,2,3') }
    end

    context 'when array of symbol' do
      let(:value) { %i[the quick fox] }

      it { is_expected.to eq('the,quick,fox') }
    end

  end
end
