# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Inflection handling routines, eg. pluralize, singular, ordinalize
  module AInflection
    # Pluralize: Returns the plural form of the word in the string
    class Pluralize < Funcky::BaseFunction
      # @example
      #
      #   puts Pluralize.new.parse('name')
      #
      #   names
      #
      # @example
      #
      #   puts Pluralize.new.parse('octopus')
      #
      #   octopi
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        return '' if value.nil?

        value = value.to_s if value.is_a?(Symbol)

        value.pluralize

      end
    end
  end
end
