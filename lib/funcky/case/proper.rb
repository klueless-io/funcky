# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # String manipulation methods for case formatting
  module Case

    class Proper < BaseFunction
      # Proper case capitalizes the first letter of THE FIRST WORD in a string
            #
      # @side effects
      #
      #   Text casing set to upper case for first letters.
      #   Numbers will maintain their spacing
      #   Subtle differences between Proper Case, Title Case, Sentence Case
      #
      # @example
      #
      #   puts title.new.parse('the quick brown fox 99')
      #
      #   The Quick Brown Fox 99
      #
      # @return [String] value converted to title case
      def parse(value)
        tokenizer.parse(value,
                        separator: ' ',
                        preserve_case: true,
                        compress_prefix_numerals: false,
                        compress_suffix_numerals: false)
                  .title
      end
    end
  end
end
