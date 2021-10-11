# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Lower: 
    class Lower < Funcky::BaseFunction
      # @example
      #
      #   puts Lower.new.parse('the Quick brown Fox 99')
      #
      #   the quick brown fox 99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        return '' if value.nil?

        value.downcase

      end
    end
  end
end
