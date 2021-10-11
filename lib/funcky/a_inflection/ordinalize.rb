# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # Inflection handling routines, eg. pluralize, singular, ordinalize
  module AInflection
    # Ordinalize: Turns a number into an ordinal string used to denote the position in an ordered sequence such as 1st, 2nd, 3rd, 4th.
    class Ordinalize < Funcky::BaseFunction
      # @example
      #
      #   puts Ordinalize.new.parse(1)
      #
      #   1st
      #
      # @example
      #
      #   puts Ordinalize.new.parse(2)
      #
      #   2nd
      #
      # @example
      #
      #   puts Ordinalize.new.parse(3)
      #
      #   3rd
      #
      # @example
      #
      #   puts Ordinalize.new.parse(4)
      #
      #   4th
      #
      # @example
      #
      #   puts Ordinalize.new.parse('101')
      #
      #   101st
      #
      # @example
      #
      #   puts Ordinalize.new.parse('105')
      #
      #   105th
      #
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
        return '' if value.nil?

        value = value.to_i if value.is_a? String

        value.ordinalize

      end
    end
  end
end
