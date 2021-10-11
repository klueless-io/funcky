# frozen_string_literal: true

# require 'handlebars/helpers/configuration'
# require 'handlebars/helpers/string_formatting/camel'

class ConfigurationSampleTokenizer
  def parse(value, preserve_case: false)
    value.parameterize(separator: '-xxx-', preserve_case: preserve_case)
  end
end

RSpec.describe Funcky::Configuration do
  after :each do
    Funcky.reset
  end

  describe '.tokenizer' do
    subject { Funcky.configuration.tokenizer }

    it { is_expected.to be_a(Funcky::StringTokenizer) }

    context 'custom tokenizer' do
      before :each do
        Funcky.configure do |config|
          config.tokenizer = ConfigurationSampleTokenizer.new
        end
      end

      it { is_expected.to be_a(ConfigurationSampleTokenizer) }
    end
  end
  # describe '.string_formatter_config' do
  #   subject { Funcky.configuration.string_formatter_config }

  #   it { is_expected.not_to be_nil }
  #   it { is_expected.to have_key(:camel) }

  #   it { is_expected.to include(camel: a_kind_of(Funcky::StringFormatting::Camel)) }
  #   it { is_expected.to include(pascalcase: a_kind_of(Funcky::StringFormatting::Camel)) }
  #   it { is_expected.to include(constantize: a_kind_of(Funcky::StringFormatting::Constantize)) }
  #   it { is_expected.to include(constant: a_kind_of(Funcky::StringFormatting::Constantize)) }
  # end
  describe '.padl_count' do
    subject { Funcky.configuration.padl_count }

    it { is_expected.to eq(30) }
  end
  describe '.padl_char' do
    subject { Funcky.configuration.padl_char }

    it { is_expected.to eq(' ') }
  end
  describe '.padr_count' do
    subject { Funcky.configuration.padr_count }

    it { is_expected.to eq(30) }
  end
  describe '.padr_char' do
    subject { Funcky.configuration.padr_char }

    it { is_expected.to eq(' ') }
  end
end
