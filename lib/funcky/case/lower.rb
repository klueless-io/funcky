# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # String manipulation methods for case formatting
  module Case
    class Lower < BaseFunction
      # Lowercase all of the characters in the given string.
      # Parse will Downcase/Lowercase all of the characters in the given string.
      #
      # @example
      #
      #   puts Lower.new.parse('The Quick Brown Fox 99')
      #
      #   the quick brown fox 99
      #
      # @return [String] value in lowercase
      def parse(value)
        return '' if value.nil?

        value.downcase
      end
    end
  end
end
