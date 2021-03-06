# frozen_string_literal: true

# # reference: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
# require 'active_support/core_ext/string'

# require 'handlebars/helpers/base_helper'

# module Handlebars
module Funcky
  # Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc.
  module Comparison
    # Ne: (not equal) Block helper that renders a block if `a` is **not equal to** `b`. If an inverse block is specified it will be rendered when falsy.
    class Ne < Funcky::BaseFunction
      # Parse will Ne: (not equal) Block helper that renders a block if `a` is **not equal to** `b`. If an inverse block is specified it will be rendered when falsy.
      #
      # @example
      #
      #   puts Ne.new.parse('aaa', 'bbb')
      #
      #   Truthy
      #
      # @param [String] lhs - left hand side value
      # @param [String] rhs - right hand side value
      # @return [String] truthy value if left hand side is NOT equal to right hand side
      def parse(lhs, rhs)
        lhs = lhs.to_s if lhs.is_a?(Symbol)
        rhs = rhs.to_s if rhs.is_a?(Symbol)

        lhs != rhs
      end

      # def handlebars_helper
      #   proc { |_context, lhs, rhs| wrapper(parse(lhs, rhs)) }
      # end
    end
  end
end
# end
