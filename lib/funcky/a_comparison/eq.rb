# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # Eq: 
    class Eq < Funcky::BaseFunction
      # @example
      #
      #   puts Eq.new.parse('aaa', 'aaa')
      #
      #   true
      #
      # @example
      #
      #   puts Eq.new.parse('aaa', 'bbb')
      #
      #   false
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        lhs = lhs.to_s if lhs.is_a?(Symbol)
        rhs = rhs.to_s if rhs.is_a?(Symbol)

        lhs == rhs

      end
    end
  end
end
