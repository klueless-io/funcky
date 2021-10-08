# frozen_string_literal: true

# require 'handlebars/helpers/inflection/pluralize_by_number'

RSpec.describe Funcky::Inflection::PluralizeByNumber do
  # Pluralize By Number: uses both a word and number to decide if the plural or singular form should be used.
  describe '#parse' do
    subject { described_class.new.parse(value, count, format) }

    let(:value) { nil }
    let(:count) { 1 }
    let(:format) { nil }

    context 'safely handle nil value' do
      it { is_expected.to eq('') }
    end

    context 'when default format' do
      let(:value) { 'person' }
      context 'when one person' do
        let(:count) { 1 }
        it { is_expected.to eq('person') }

        context 'when 2 people' do
          let(:count) { 2 }
          it { is_expected.to eq('people') }
        end
      end
    end

    context 'when number_word format' do
      let(:format) { 'number_word' }
      let(:value) { 'person' }
      context 'when one person' do
        let(:count) { 1 }
        it { is_expected.to eq('1 person') }

        context 'when 2 people' do
          let(:count) { 2 }
          it { is_expected.to eq('2 people') }
        end
      end
    end
  end
end
