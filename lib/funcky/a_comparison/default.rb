# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module AComparison
    # Default: 
    class Default < Funcky::BaseFunction
      # @example
      #
      #   puts Default.new.parse(, 'happy')
      #
      #   happy
      #
      # @example
      #
      #   puts Default.new.parse('sad', 'happy')
      #
      #   sad
      #
      # @example
      #
      #   puts Default.new.parse(, , , , 'david')
      #
      #   david
      #
      # @example
      #
      #   puts Default.new.parse('', 'happy')
      #
      #   happy
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        default_value = values[-1]

        find_value = values[0..-2].find { |value| !value.nil? }

        find_value || default_value

      end
    end
  end
end
