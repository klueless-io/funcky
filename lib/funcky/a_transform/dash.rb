# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Tokenize and apply case and/or separator
  module ATransform
    # Dash: convert to dash notation
    class Dash < Funcky::BaseFunction
      # @example
      #
      #   puts Dash.new.parse('the Quick brown Fox 99')
      #
      #   the-quick-brown-fox99
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        tokenizer.parse(value)

      end
    end
  end
end
