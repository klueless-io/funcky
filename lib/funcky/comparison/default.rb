#  frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

# require 'handlebars/helpers/base_safe_string_helper'

# module Handlebars
module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module Comparison
    # Default: Returns the first value that is not nil or undefined, otherwise the 'default' value is returned.
    class Default < Funcky::BaseFunction
      # Parse will Default: Returns the first value that is not nil or undefined, otherwise the 'default' value is returned.
      #
      # @example
      #
      #   emotion = nil
      #   puts Default.new.parse(emotion, 'happy')
      #
      #   happy
      #
      # @example
      #
      #   emotion = 'sad'
      #   puts Default.new.parse(emotion, 'happy')
      #
      #   sad
      #
      # @example
      #
      #   david = nil
      #   lisa = nil
      #   ben = nil
      #   puts Default.new.parse(david, lisa, ben, 'happy')
      #
      #   happy
      #
      # @example
      #
      #   david = nil
      #   lisa = sad
      #   ben = mad
      #   puts Default.new.parse(david, lisa, ben, 'happy')
      #
      #   sad
      #
      # @param [Object] *values - one or more paramaters that may or may not contain nil
      # @param [String] default_value - the last paramater will be the default value
      # @return [String] value or default value
      def parse(values)
        default_value = values[-1]

        find_value = values[0..-2].find { |value| !value.nil? }

        find_value || default_value
      end
    end
  end
end
# end
