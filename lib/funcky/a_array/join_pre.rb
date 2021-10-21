# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Array handling routines, eg. join, join_prefix, join_post
  module AArray
    # JoinPre: join an array of values with separator as a string and using the separator at the beginning of string
    class JoinPre < Funcky::BaseFunction
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        return '' if value.nil? || !value.is_a?(Array)
        values = value.reject(&:blank?)
        return '' if value.length.zero?

        separator = ','
        "#{separator}#{value.join(separator)}"

      end
    end
  end
end
