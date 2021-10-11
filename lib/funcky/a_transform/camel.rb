# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Camel: convert to camel notation
    class Camel < Funcky::BaseFunction
      # @example
      #
      #   puts Camel.new.parse('the Quick brown Fox 99')
      #
      #   TheQuickBrownFox99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        tokenizer.parse(value).underscore.camelize

      end
    end
  end
end
