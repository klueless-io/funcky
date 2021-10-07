# frozen_string_literal: true

require 'funcky/version'
require 'funcky/base_function'
require 'funcky/inflection/ordinal'

module Funcky
  # raise Funcky::Error, 'Sample message'
  class Error < StandardError; end

  # Your code goes here...
end

if ENV['KLUE_DEBUG']&.to_s&.downcase == 'true'
  namespace = 'Funcky::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('funcky/version') }
  version = Funcky::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
