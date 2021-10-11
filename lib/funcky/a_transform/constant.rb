# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Constant: 
    class Constant < Funcky::BaseFunction
      # @example
      #
      #   puts Constant.new.parse('the Quick brown Fox 99')
      #
      #   THE_QUICK_BROWN_FOX99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        tokenizer.parse(value, separator: '_').upcase      

      end
    end
  end
end
