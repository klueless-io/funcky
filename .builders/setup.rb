require 'config/_'
require 'documents/_'

# puts JSON.pretty_generate(data.raw_data)
# puts a.data_struct
# puts a.raw_data_struct
# builder.debug

  builder.cd(:root)

builder
  .add_file('FUNCTIONS.md',
            template_file: 'FUNCTIONS.md',
            categories: categories.sort_by { |r| r.name },
            functions: functions.sort_by { |r| [r.category, r.name] },
            on_exist: :write)

builder.cd(:lib)

commands.each do |command|

  builder.add_file("x/#{command.category}/#{command.name}.rb",
                   command: command,
                   template_file: 'command.rb',
                   on_exist: :write)
  
  # puts Dir.pwd
  # FileUtils.mkdir_p(File.dirname(file))
end

puts ':)'