# frozen_string_literal: true

RSpec.describe Funcky::Case::Human do
  let(:value) { 'the Quick brown Fox' }

  it { is_expected.not_to be_nil }

  # human will convert text to human case, aka capitalize first letter only
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('The quick brown fox') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'twenty five66',
                    'Twenty five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'twenty five 66',
                    'Twenty five 66'
  end
end
