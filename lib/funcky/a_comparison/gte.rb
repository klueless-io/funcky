# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # Gte: 
    class Gte < Funcky::BaseFunction
      # @example
      #
      #   puts Gte.new.parse(1, 2)
      #
      #   false
      #
      # @example
      #
      #   puts Gte.new.parse(1, 1)
      #
      #   true
      #
      # @example
      #
      #   puts Gte.new.parse(2, 1)
      #
      #   true
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(lhs, rhs)
        lhs >= rhs
      end
    end
  end
end
