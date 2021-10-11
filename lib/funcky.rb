# frozen_string_literal: true

require 'funcky/version'
require 'funcky/configuration'
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
require 'funcky/case/back_slash'
require 'funcky/case/camel'
require 'funcky/case/constant'
require 'funcky/case/dash'
require 'funcky/case/dot'
require 'funcky/case/double_colon'
# require 'funcky/case/format_as.rb'
require 'funcky/case/human'
require 'funcky/case/lamel'
require 'funcky/case/lower'
require 'funcky/case/proper'
require 'funcky/case/slash'
require 'funcky/case/snake'
require 'funcky/case/title'
require 'funcky/case/upper'
require 'all_functions'

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
