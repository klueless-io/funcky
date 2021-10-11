# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Inflection handling routines, eg. pluralize, singular, ordinalize
  module AInflection
    # PluralizeByNumber: Uses both a word and number to decide if the plural or singular form should be used.
    class PluralizeByNumber < Funcky::BaseFunction
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        return '' if value.nil?

        count = count.to_i if count.is_a? String
        format = :word if format.nil?

        case format.to_sym
        when :number_word, :number_and_word
          "#{count} #{value.pluralize(count)}"
        else # aka :word
          value.pluralize(count)
        end

      end
    end
  end
end
