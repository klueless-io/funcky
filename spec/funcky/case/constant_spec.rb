# frozen_string_literal: true

RSpec.describe Funcky::Case::Constant do
  let(:value) { 'the quick brown fox' }

  it { is_expected.not_to be_nil }

  # CONSTANT case the characters in the given 'string'.
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('THE_QUICK_BROWN_FOX') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'twenty five66',
                    'TWENTY_FIVE66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'twenty five 66',
                    'TWENTY_FIVE66'
  end

end
