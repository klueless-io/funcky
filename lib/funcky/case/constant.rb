# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # String manipulation methods for case formatting
  module Case
    # CONSTANT case the characters in the given 'string'.
    class Constant < BaseFunction
      # Parse will CONSTANT case the characters in the given 'string'.
      #
      # @example
      #
      #   puts Constant.new.parse('the quick brown fox 99')
      #
      #   THE_QUICK_BROWN_FOX99
      #
      # @return [String] value converted to constant case
      def parse(value)
        tokenizer.parse(value, separator: '_').upcase
      end
    end
  end
end
