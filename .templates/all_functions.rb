# frozen_string_literal: true

puts 'all functions'
{{#each functions}}
require 'funcky/{{category}}/{{name}}'
{{/each}}
