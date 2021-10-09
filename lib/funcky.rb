# frozen_string_literal: true

require 'funcky/version'
require 'funcky/base_function'
require 'funcky/string_tokenizer'
require 'funcky/inflection/ordinal'
require 'funcky/inflection/ordinalize'
require 'funcky/inflection/pluralize_by_number'
require 'funcky/inflection/pluralize'
require 'funcky/inflection/singularize'
require 'funcky/comparison/and'
require 'funcky/comparison/default'
require 'funcky/comparison/eq'
require 'funcky/comparison/gt'
require 'funcky/comparison/gte'
require 'funcky/comparison/lt'
require 'funcky/comparison/lte'
require 'funcky/comparison/ne'
require 'funcky/comparison/or'

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
