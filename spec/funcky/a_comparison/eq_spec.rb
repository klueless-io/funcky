# frozen_string_literal: true

# Eq: 
RSpec.describe Funcky::AComparison::Eq do
  let(:instance) { described_class.new }
  
  describe 'initialize' do
    subject { instance }
    it { is_expected.not_to be_nil }
  end

  # describe '#parse' do
  #   subject { instance.parse(value) }

  #   let(:value) { nil }

  #   context 'safely handle nil' do
  #     it { is_expected.to eq('') }
  #   end
  # end

  describe '#parse' do
    subject { instance.parse(lhs, rhs) }

    let(:lhs) { nil }
    let(:rhs) { nil }

    context 'nil == nil' do
      it { is_expected.to be_truthy }
    end

    context "'aaa' == 'aaa'" do
      let(:lhs) { 'aaa' }
      let(:rhs) { 'aaa' }

      it { is_expected.to be_truthy }
    end

    context ":aaa == 'aaa'" do
      let(:lhs) { :aaa }
      let(:rhs) { 'aaa' }

      it { is_expected.to be_truthy }
    end

    context "'aaa' == :aaa" do
      let(:lhs) { 'aaa' }
      let(:rhs) { :aaa }

      it { is_expected.to be_truthy }
    end

    context "'aaa' == 'AAA'" do
      let(:lhs) { 'aaa' }
      let(:rhs) { 'AAA' }

      it { is_expected.to be_falsey }
    end

    context "'aaa' == 'bbb'" do
      let(:lhs) { 'aaa' }
      let(:rhs) { 'bbb' }

      it { is_expected.to be_falsey }
    end
  end
end
