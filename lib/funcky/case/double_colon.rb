# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
module Funcky
  # String manipulation methods for case formatting
  module Case
    # double_colon notation for the characters in the given 'string'. aka ruby namespace
    class DoubleColon < BaseFunction
      # Parse will double_colon notation for the characters in the given 'string'. aka ruby namespace
      #
      # @side effects
      #
      #   Text casing is preserved.
      #
      # @example
      #
      #   puts DoubleColon.new.parse('the quick brown fox 99')
      #
      #   The::Quick::Brown::Fox99
      #
      # @return [String] value converted to double_colon notation
      def parse(value)
        tokenizer.parse(value, preserve_case: true, separator: '::')
      end
    end
  end
end
