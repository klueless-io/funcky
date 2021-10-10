# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

module Funcky
  module Case
  # String manipulation methods for case formatting
  class Human < BaseFunction
      # human class will convert text to human case, i.e. make only the first word Proper case for a proper looking sentence
      # Parse function will convert text to human case
      #
      # @side effects
      #
      #   Text casing set to upper case for first letter only.
      #   Numbers will maintain their spacing
      #
      # @example
      #
      #   puts Human.new.parse('the quick brown fox 99')
      #
      #   The quick brown fox 99
      #
      # @return [String] value converted to sentence case
      def parse(value)
        tokenizer.parse(value,
                        separator: ' ',
                        preserve_case: true,
                        compress_prefix_numerals: false,
                        compress_suffix_numerals: false)
                  .human
      end
    end
  end
end
