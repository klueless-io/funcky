# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Snake: 
    class Snake < Funcky::BaseFunction
      # @example
      #
      #   puts Snake.new.parse('the Quick brown Fox 99')
      #
      #   the_quick_brown_fox99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        tokenizer.parse(value, separator: '_', forced_separator: true)

      end
    end
  end
end
