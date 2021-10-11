puts Gem.loaded_specs['handlebars-helpers'].full_gem_path
puts File.join(Gem.loaded_specs['handlebars-helpers'].full_gem_path, '.handlebars_helpers.json')

Handlebars::Helpers.configure do |config|
  config_file = File.join(Gem.loaded_specs['handlebars-helpers'].full_gem_path, '.handlebars_helpers.json')
  config.helper_config_file = config_file

  string_config_file = File.join(Gem.loaded_specs['handlebars-helpers'].full_gem_path,
                                 '.handlebars_string_formatters.json')
  config.string_formatter_config_file = string_config_file
end

def camel
  require 'handlebars/helpers/string_formatting/camel'
  Handlebars::Helpers::StringFormatting::Camel.new
end

def snake
  require 'handlebars/helpers/string_formatting/snake'
  Handlebars::Helpers::StringFormatting::Snake.new
end

def titleize
  require 'handlebars/helpers/string_formatting/titleize'
  Handlebars::Helpers::StringFormatting::Titleize.new
end

def pluralize
  require 'handlebars/helpers/inflection/pluralize'
  Handlebars::Helpers::Inflection::Pluralize.new
end

def singularize
  require 'handlebars/helpers/inflection/singularize'
  Handlebars::Helpers::Inflection::Singularize.new
end

def padr
  require 'handlebars/helpers/string_formatting/padr'
  Handlebars::Helpers::StringFormatting::Padr.new
end

def padl
  require 'handlebars/helpers/string_formatting/padl'
  Handlebars::Helpers::StringFormatting::Padl.new
end
