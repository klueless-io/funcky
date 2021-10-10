# frozen_string_literal: true

RSpec.describe Funcky::Case::FormatAs do
  # Format As: Chain a list of string formatters to run sequentially
  describe '#parse' do
    subject { described_class.new.parse(value, formats) }

    let(:value) { nil }
    let(:formats) { nil }

    context 'safely handle nil value' do
      it { is_expected.to eq('') }
    end

    context 'with value' do
      let(:value) { 'the quick brown fox' }
      context 'safely handle nil format' do
        it { is_expected.to eq('the quick brown fox') }
      end
      context 'safely handle invalid format' do
        let(:formats) { 'unknown' }
        it { is_expected.to eq('the quick brown fox') }
      end
      context 'safely handle none format' do
        let(:formats) { 'none' }
        it { is_expected.to eq('the quick brown fox') }
      end
      context 'with format: camel' do
        let(:formats) { 'camel' }
        it { is_expected.to eq('TheQuickBrownFox') }
      end
      context 'with format: camel,pluralize,snake' do
        let(:formats) { 'camel,pluralize,snake' }
        it { is_expected.to eq('the_quick_brown_foxes') }
      end
      context 'with format: camel,pluralize,dashify' do
        let(:formats) { 'camel,pluralize,dashify' }
        it { is_expected.to eq('the-quick-brown-foxes') }
      end
      context 'with format: camel,pluralize,dotify' do
        let(:formats) { 'camel,pluralize,dotify' }
        it { is_expected.to eq('the.quick.brown.foxes') }
      end
    end
  end

end
