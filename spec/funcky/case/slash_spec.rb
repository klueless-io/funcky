# frozen_string_literal: true

RSpec.describe Funcky::Case::Slash do
  let(:value) { 'the quick brown fox' }

  it { is_expected.not_to be_nil }

  # slash case the characters in the given 'string'.
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('the/quick/brown/fox') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'twenty Five66',
                    'twenty/Five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'twenty Five 66',
                    'twenty/Five66'
  end
end
