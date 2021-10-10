# frozen_string_literal: true

RSpec.describe Funcky::Case::Snake do
  let(:value) { 'the Quick brown Fox' }

  it { is_expected.not_to be_nil }

  # snake case the characters in the given 'string'.
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('the_quick_brown_fox') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'twenty five66',
                    'twenty_five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'twenty five 66',
                    'twenty_five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'using dash notation as input',
                    'the-quick-brown-fox66',
                    'the_quick_brown_fox66'
  end

end
