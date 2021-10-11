# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Lamel: 
    class Lamel < Funcky::BaseFunction
      # @example
      #
      #   puts Lamel.new.parse('the Quick brown Fox 99')
      #
      #   theQuickBrownFox99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        tokenizer.parse(value, separator: '_').camelize(:lower)

      end
    end
  end
end
