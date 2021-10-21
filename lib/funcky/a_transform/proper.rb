# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Proper: Proper case capitalizes the first letter of ALL words in a string
    class Proper < Funcky::BaseFunction
      # @example
      #
      #   puts Proper.new.parse('the Quick brown Fox 99')
      #
      #   The Quick Brown Fox 99
      #
      # @example
      #
      #   puts Proper.new.parse('The quick  brown fox, jumped  over the lazy dog')
      #
      #   The Quick Brown Fox Jumped Over The Lazy Dog
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
      tokenizer.parse(value,
              separator: ' ',
              preserve_case: true,
              compress_prefix_numerals: false,
              compress_suffix_numerals: false)
        .titleize

      end
    end
  end
end
