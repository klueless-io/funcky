# frozen_string_literal: true

# require 'handlebars/helpers/string_formatting/back_slash'

RSpec.describe Funcky::Case::BackSlash do
  let(:value) { 'the quick brown fox' }

  # convert to back slash notation
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('the\quick\brown\fox') }

    it_behaves_like :nil_will_parse_to_empty

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing number supplied',
                    'Twenty Five66',
                    'Twenty\Five66'

    it_behaves_like :valid_value_will_parse_successfully,
                    'trailing space and number supplied',
                    'Twenty Five 66',
                    'Twenty\Five66'
  end
end
