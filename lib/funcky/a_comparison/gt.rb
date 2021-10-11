# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # Gt: 
    class Gt < Funcky::BaseFunction
      # @example
      #
      #   puts Gt.new.parse(2, 1)
      #
      #   true
      #
      # @example
      #
      #   puts Gt.new.parse(2, 2)
      #
      #   false
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        lhs > rhs

      end
    end
  end
end
