# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Slash: 
    class Slash < Funcky::BaseFunction
      # @example
      #
      #   puts Slash.new.parse('the Quick brown Fox 99')
      #
      #   the/Quick/brown/Fox99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        tokenizer.parse(value, preserve_case: true, separator: '/')

      end
    end
  end
end
