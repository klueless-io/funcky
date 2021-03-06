# frozen_string_literal: true

# require 'handlebars/helpers/inflection/singularize'

RSpec.describe Funcky::Inflection::Singularize do
  let(:value) { 'octopi' }
  # let(:value) { 'octopus' }

  it { is_expected.not_to be_nil }

  # The reverse of #pluralize, returns the singular form of a word in a string
  describe '#parse' do
    subject { described_class.new.parse(value) }

    it { is_expected.to eq('octopus') }

    # DAVE DAVE
    # it_behaves_like :nil_will_parse_to_empty

    context 'when :symbol' do
      let(:value) { :octopi }

      it { is_expected.to eq('octopus') }
    end
  end

  # describe 'use as handlebars helper' do
  #   let(:subject) do
  #     Funcky::Template.render(template, value) do |register|
  #       register.helper(:singularize, &described_class.new.handlebars_helper)
  #     end
  #   end
  #   let(:template) { '{{singularize .}}' }

  #   it { is_expected.to eq('octopus') }
  # end
end
