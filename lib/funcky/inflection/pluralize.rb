# frozen_string_literal: true

# # reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

module Funcky
  # Inflection handling routines, eg. pluralize, singular, ordinalize
  module Inflection
    # Returns the plural form of the word in the string
    class Pluralize < Funcky::BaseFunction
      # Parse will Returns the plural form of the word in the string
      #
      # @example
      #
      #   puts Pluralize.new.parse('name')
      #
      #   names
      #
      #   puts Pluralize.new.parse('octopus')
      #
      #   octopi
      #
      #
      # @return [String] value in plural form
      def parse(value)
        return '' if value.nil?

        value = value.to_s if value.is_a?(Symbol)

        value.pluralize
      end
    end
  end
end
