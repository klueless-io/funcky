# frozen_string_literal: true

RSpec.describe Funcky::Comparison::Eq do
  # Eq: Block helper that renders a block if `a` is **equal to** `b`. If an inverse block is specified it will be rendered when falsy.

  describe '#parse' do
    subject { described_class.new.parse(lhs, rhs) }

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
