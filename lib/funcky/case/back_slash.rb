# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

module Funcky
  # String manipulation methods for case formatting
  module Case
    # convert to back slash notation
    ## class BackSlash < Handlebars::Helpers::BaseHelper
    class BackSlash < BaseFunction
      # Parse will convert to back slash notation
      #
      # @side effects
      #
      #   Text casing is preserved.
      #
      # @example
      #
      #   puts BackSlash.new.parse('the Quick brown Fox 99')
      #
      #   the\quick\brown\fox99
      #
      # @return [String] value converted to back_slash case
      def parse(value)
        tokenizer.parse(value, preserve_case: true, separator: '\\')
      end
    end
  end
end
