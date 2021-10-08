# frozen_string_literal: true

RSpec.shared_examples :nil_will_parse_to_empty do
  let(:value) { nil }

  it { is_expected.to eq('') }
end
