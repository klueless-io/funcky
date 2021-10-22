# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # And: 
    class And < Funcky::BaseFunction
      # @example
      #
      #   puts And.new.parse(, )
      #
      #   false
      #
      # @example
      #
      #   puts And.new.parse('data', )
      #
      #   false
      #
      # @example
      #
      #   puts And.new.parse(, 'data')
      #
      #   false
      #
      # @example
      #
      #   puts And.new.parse('data', 'data')
      #
      #   true
      #
      # @example
      #
      #   puts And.new.parse('aaa', 'bbb')
      #
      #   true
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(values)
        values.all? { |value| value }

      end
    end
  end
end
