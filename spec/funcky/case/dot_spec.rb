# frozen_string_literal: true

RSpec.describe Funcky::Case::Dot do
  let(:value) { 'the quick brown fox' }

  it { is_expected.not_to be_nil }

  # convert to dot notation
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('the.quick.brown.fox') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'twenty five66',
                    'twenty.five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'twenty five 66',
                    'twenty.five66'
  end

end
