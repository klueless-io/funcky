# frozen_string_literal: true

# Ordinal: The suffix that should be added to a number to denote the position in an ordered sequence such as 1st, 2nd, 3rd, 4th
RSpec.describe Funcky::AInflection::Ordinal do
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
  end
end
