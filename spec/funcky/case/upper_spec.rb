# frozen_string_literal: true

RSpec.describe Funcky::Case::Upper do
  let(:value) { 'the quick brown fox' }

  it { is_expected.not_to be_nil }

  # Upcase/Uppercase all of the characters in the given string.
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('THE QUICK BROWN FOX') }

    it_behaves_like :nil_will_parse_to_empty
  end
end
