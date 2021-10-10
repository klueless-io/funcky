# frozen_string_literal: true

RSpec.describe Funcky::Case::Lower do
  let(:value) { 'The Quick Brown Fox' }

  it { is_expected.not_to be_nil }

  # Downcase/Lowercase all of the characters in the given string.
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('the quick brown fox') }

    it_behaves_like :nil_will_parse_to_empty
  end

end
