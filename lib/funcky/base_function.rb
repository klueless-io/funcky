# frozen_string_literal: true

module Funcky
  # base helper provides an interface to wrap your parsing logic
  # in a Handlebars aware context
  class BaseFunction
    def parse(value)
      value
    end
  end

  # # String tokenizer will clean up a string so that
  # # all sorts of case formatted strings can be
  # # represented in a consistent fashion
  # def tokenizer
  #   @_tokenizer ||= Handlebars::Helpers.configuration.tokenizer
  # end

  # # Needs to move into a GEM and make sure I have consistency
  # def struct_to_hash(data)
  #   # No test yet
  #   if data.is_a?(Array)
  #     return data.map { |v| v.is_a?(OpenStruct) ? struct_to_hash(v) : v }
  #   end

  #   data.each_pair.with_object({}) do |(key, value), hash|
  #     case value
  #     when OpenStruct
  #       hash[key] = struct_to_hash(value)
  #     when Array
  #       # No test yet
  #       values = value.map { |v| v.is_a?(OpenStruct) ? struct_to_hash(v) : v }
  #       hash[key] = values
  #     else
  #       hash[key] = value
  #     end
  #   end
  # end
  #   end
end
