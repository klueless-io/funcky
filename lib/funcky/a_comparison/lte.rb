# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # Lte: # Lte: (less than or equal to) Block helper that renders a block if &#x60;a&#x60; is **less than or equal to** &#x60;b&#x60;. If an inverse block is specified it will be rendered when falsy.
    class Lte < Funcky::BaseFunction
      # @example
      #
      #   puts Lte.new.parse(1, 2)
      #
      #   true
      #
      # @example
      #
      #   puts Lte.new.parse(2, 2)
      #
      #   true
      #
      # @example
      #
      #   puts Lte.new.parse(2, 1)
      #
      #   false
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        lhs <= rhs

      end
    end
  end
end
