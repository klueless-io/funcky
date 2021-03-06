# frozen_string_literal: true

# reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb

module Funcky
  # {{command.category_description}}
  module {{camel command.category}}
    # {{camel command.name}}: {{command.function_description}}
    class {{camel command.name}} < Funcky::BaseFunction
      {{#each command.usecases}}
      # @example
      #
      #   puts {{camel ./function}}.new.parse({{{nice_inputs}}})
      #
      #   {{expected_output}}
      #
      {{/each}}
      #
      # @param [String|Int] value - numeric value
      # @return [String] ordinal suffix that would be required for a number
      def parse(value)
{{{command.ruby}}}
      end
    end
  end
end
