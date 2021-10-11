# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # {{humanize command.category_description}}
  module {{camel command.category}}
    # {{humanize command.function_description}}
    class {{camel command.name}} < Funcky::BaseFunction
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
        # CODE GOES HERE
        # tokenizer.parse(value, preserve_case: true, separator: '\\')
      end
    end
  end
end
