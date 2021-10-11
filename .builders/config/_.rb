ActiveSupport::Inflector.inflections do |inflect|
end

include KLog::Logging

require_relative './app_settings'
require_relative './configure_builder'
require_relative './handlebars_helpers'
