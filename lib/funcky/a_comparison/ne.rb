# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # Ne: # Ne: (not equal) Block helper that renders a block if &#x60;a&#x60; is **not equal to** &#x60;b&#x60;. If an inverse block is specified it will be rendered when falsy.
    class Ne < Funcky::BaseFunction
      # @example
      #
      #   puts Ne.new.parse(1, 2)
      #
      #   true
      #
      # @example
      #
      #   puts Ne.new.parse(1, 1)
      #
      #   false
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(lhs, rhs)
        lhs = lhs.to_s if lhs.is_a?(Symbol)
        rhs = rhs.to_s if rhs.is_a?(Symbol)

        lhs != rhs

      end
    end
  end
end
