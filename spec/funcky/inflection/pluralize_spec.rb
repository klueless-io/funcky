# frozen_string_literal: true

RSpec.describe Funcky::Inflection::Pluralize do
  let(:value) { 'octopus' }

  it { is_expected.not_to be_nil }

  # Returns the plural form of the word in the string
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it_behaves_like :nil_will_parse_to_empty

    it { is_expected.to eq('octopi') }

    context 'when :symbol' do
      let(:value) { :octopus }

      it { is_expected.to eq('octopi') }
    end
  end
end
