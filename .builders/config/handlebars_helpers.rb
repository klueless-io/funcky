puts Gem.loaded_specs['handlebars-helpers'].full_gem_path
puts File.join(Gem.loaded_specs['handlebars-helpers'].full_gem_path, '.handlebars_helpers.json')

KConfig.configure do |config|
  config.handlebars.defaults.add_all_defaults
end
