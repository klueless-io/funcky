# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  module Case
    # String manipulation methods for case formatting
    # convert to dot notation
    class Dot < BaseFunction
      # Parse will convert to dot notation
      #
      # @side effects
      #
      #   All text is in lower case
      #
      # @example
      #
      #   puts Dot.new.parse('the quick brown fox 99')
      #
      #   the.quick.brown.fox99
      #
      # @return [String] value converted to dot notation
      def parse(value)
        tokenizer.parse(value, separator: '.')
      end
    end
  end
end
