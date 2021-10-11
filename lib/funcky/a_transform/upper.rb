# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Upper: 
    class Upper < Funcky::BaseFunction
      # @example
      #
      #   puts Upper.new.parse('the Quick brown Fox 99')
      #
      #   THE QUICK BROWN FOX 99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        return '' if value.nil?

        value.upcase

      end
    end
  end
end
