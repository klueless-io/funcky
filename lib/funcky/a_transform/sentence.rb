# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Sentence: Upper case for first letter only.  Numbers will maintain their spacing
    class Sentence < Funcky::BaseFunction
      # @example
      #
      #   puts Sentence.new.parse('the Quick brown Fox 99')
      #
      #   The quick brown fox 99
      #
      # @example
      #
      #   puts Sentence.new.parse('The quick  brown fox, jumped  over the lazy dog')
      #
      #   The quick brown fox jumped over the lazy dog
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
                  .humanize

      end
    end
  end
end
