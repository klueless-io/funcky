# frozen_string_literal: true

RSpec.describe Funcky::Case::Title do
  let(:value) { 'the quick brown fox jumped over the lazy dog' }

  it { is_expected.not_to be_nil }

  it { is_expected.not_to be_nil }

  # title case the characters, first letter of every word, in the given 'string'
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('The Quick Brown Fox Jumped Over The Lazy Dog') }
    # THIS IS HOW it really should be
    # "The Quick Brown Fox Jumped over the Lazy Dog"
    # LOOK AT: https://github.dev/granth/titleize
    # LOOK AT: https://www.thegreatcodeadventure.com/lets-make-a-gem/

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
