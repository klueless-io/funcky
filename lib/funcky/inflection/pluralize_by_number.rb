# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

module Funcky
  # Inflection handling routines, eg. pluralize, singular, ordinalize
  module Inflection
    # Pluralize By Number: uses both a word and number to decide if the plural or singular form should be used.
    class PluralizeByNumber < Funcky::BaseFunction
      # Parse will Pluralize By Number: uses both a word and number to decide if the plural or singular form should be used.
      #
      # @example
      #
      #   puts PluralizeByNumber.new.parse('category', '3', 'number_word')
      #
      #   3 categories
      #
      # @example
      #
      #   puts PluralizeByNumber.new.parse('category', '3', 'word' )
      #
      #   categories
      #
      #   puts PluralizeByNumber.new.parse('category', '1' )
      #
      #   category
      #
      # @param [String] value - value to pluralize
      # @param [Integer] count - count used to determine pluralization
      # @param [String] format - (Optional) what format should output be. :word, :number_word
      # @return [String] value and number are used to calculate plural/singular form
      def parse(value, count, format)
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
