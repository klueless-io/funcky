# frozen_string_literal: true

RSpec.shared_examples :valid_value_will_parse_successfully do |label, value, expected_value|
  let(:value) { value }

  context "when #{label}" do
    it { is_expected.to eq(expected_value) }
  end
end
