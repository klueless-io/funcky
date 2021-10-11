# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

module Funcky
  # String manipulation methods for case formatting
  module Case
    # Uppercase all of the characters in the given string.
    class Upper < BaseFunction
      # Parse will Upcase/Uppercase all of the characters in the given string.
      #
      # @example
      #
      #   puts Upper.new.parse('the quick brown fox 99')
      #
      #   THE QUICK BROWN FOX 99
      #
      # @return [String] value in uppercase
      def parse(value)
        return '' if value.nil?

        value.upcase
      end
    end
  end
end
