# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

module Funcky
  # String manipulation methods for case formatting
  module Case
    # slash case the characters in the given 'string'.
    class Slash < BaseFunction
      # Parse will slash case the characters in the given 'string'.
      #
      # @side effects
      #
      #   Text casing is preserved.
      #
      # @example
      #
      #   puts Slash.new.parse('the Quick brown Fox 99')
      #
      #   the/Quick/brown/Fox99
      #
      # @return [String] value converted to slash notation
      def parse(value)
        tokenizer.parse(value, preserve_case: true, separator: '/')
      end
    end
  end
end
