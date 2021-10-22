# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # Or: 
    class Or < Funcky::BaseFunction
      # @example
      #
      #   puts Or.new.parse(, )
      #
      #   false
      #
      # @example
      #
      #   puts Or.new.parse('data', )
      #
      #   true
      #
      # @example
      #
      #   puts Or.new.parse(, 'data')
      #
      #   true
      #
      # @example
      #
      #   puts Or.new.parse('data', 'data')
      #
      #   true
      #
      # @example
      #
      #   puts Or.new.parse('aaa', 'bbb')
      #
      #   true
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(values)
        values.any? { |value| value }

      end
    end
  end
end
