# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  module Case
    # String manipulation methods for case formatting
    # convert to dash notation
    class Dash < BaseFunction
      # Parse will convert to dash notation
      #
      # @side effects
      #
      #   All text is in lower case
      #
      # @example
      #
      #   puts Dash.new.parse('the quick brown fox 99')
      #
      #   the-quick-brown-fox99
      #
      # @return [String] value converted to dash notation
      def parse(value)
        tokenizer.parse(value)
      end
    end
  end
end
