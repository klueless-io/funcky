# frozen_string_literal: true

RSpec.describe Funcky::Case::Dash do
  let(:value) { 'The Quick Brown Fox' }

  it { is_expected.not_to be_nil }

  # convert to dash notation
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('the-quick-brown-fox') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'Twenty Five66',
                    'twenty-five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'Twenty Five 66',
                    'twenty-five66'
  end

end
