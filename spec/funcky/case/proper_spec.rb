# frozen_string_literal: true

RSpec.describe Funcky::Case::Proper do
  let(:value) { 'the quick brown fox' }

  it { is_expected.not_to be_nil }

  # title case the characters, first letter of every word, in the given 'string'
  describe '#parse' do
    subject { described_class.new.parse(value) }

    ## SEAN changed only first word
    it { is_expected.to eq('The quick brown fox') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'twenty five66',
                    'Twenty Five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'twenty five 66',
                    'Twenty Five 66'
  end

end
