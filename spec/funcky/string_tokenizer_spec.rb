# frozen_string_literal: true

RSpec.describe Funcky::StringTokenizer do
  let(:subject) do
    described_class.new.parse(value,
                              separator: separator,
                              forced_separator: forced_separator,
                              preserve_case: preserve_case,
                              compress_prefix_numerals: compress_prefix_numerals,
                              compress_suffix_numerals: compress_suffix_numerals)
  end

  let(:separator) { '-' }
  let(:forced_separator) { false }
  let(:preserve_case) { false }
  let(:compress_prefix_numerals) { true }
  let(:compress_suffix_numerals) { true }

  context 'with character handling' do
    context 'when nil' do
      let(:value) { nil }

      it { is_expected.to eq('') }
    end

    context 'when given a natural sentence' do
      let(:value) { 'the quick brown fox' }

      it { is_expected.to eq('the-quick-brown-fox') }
    end

    context 'when given a natural sentence with extra spacing' do
      let(:value) { 'the  quick  brown  fox' }

      it { is_expected.to eq('the-quick-brown-fox') }
    end

    context 'when given a sentence with other characters' do
      let(:value) { 'abc _123-xyz~`!!@#$%^&*()+=' }

      it { is_expected.to eq('abc-_123-xyz') }
    end

    context 'when given a natural sentence each word starting uppercase' do
      let(:value) { 'The Quick Brown Fox' }

      it { is_expected.to eq('the-quick-brown-fox') }
    end

    context 'when given a natural sentence all words fully uppercased' do
      let(:value) { 'THE QUICK BROWN FOX' }

      it { is_expected.to eq('the-quick-brown-fox') }
    end

    context 'when given a camel case' do
      let(:value) { 'TheQuickBrownFox' }

      it { is_expected.to eq('the-quick-brown-fox') }
    end

    context 'when given a lamel case' do
      let(:value) { 'theQuickBrownFox' }

      it { is_expected.to eq('the-quick-brown-fox') }
    end

    context 'handle numbers' do
      context 'when suffixed with number' do
        let(:value) { 'the quick brown fox 66' }

        it { is_expected.to eq('the-quick-brown-fox66') }

        context 'when compress_suffix_numerals is false' do
          let(:compress_suffix_numerals) { false }

          it { is_expected.to eq('the-quick-brown-fox-66') }
        end
      end

      context 'when prefixed with number' do
        let(:value) { '99 the quick brown fox' }

        it { is_expected.to eq('99the-quick-brown-fox') }

        context 'when compress_suffix_numerals is false' do
          let(:compress_prefix_numerals) { false }

          it { is_expected.to eq('99-the-quick-brown-fox') }
        end
      end
    end
  end

  context 'any input into target separator' do
    let(:separator) { '#' }

    context 'when given a natural sentence' do
      let(:value) { 'the quick brown fox' }

      it { is_expected.to eq('the#quick#brown#fox') }
    end

    context 'forced_separator is false (this is default)' do
      context 'when given a "_" sentence' do
        let(:value) { 'the_quick brown-fox' }

        it { is_expected.to eq('the_quick#brown-fox') }

        context 'when forced separator is true' do
          let(:forced_separator) { true }

          it { is_expected.to eq('the#quick#brown#fox') }
        end
      end
    end
  end
end
