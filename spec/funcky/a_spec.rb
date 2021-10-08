RSpec.describe 'a' do

  let(:src_code) { 'lib/funcky/string_formatting' }
  let(:src_spec) { 'spec/funcky/string_formatting' }

  let(:file_list_code) { Dir["#{src_code}/*.rb"] } #.take(1) }
  let(:file_list_spec) { Dir["#{src_spec}/*.rb"] } #.take(1) }
  let(:file_list) { (file_list_code + file_list_spec).sort } #.take(1) }

  def add_comments(file)
    altered_lines = File.read(file).lines.map.with_index do  |line, index|
      index == 0 || line.empty? ? line : "# #{line}"
    end 

    File.write(file, altered_lines.join)
  end

  def remove_comments(file)
    altered_lines = File.read(file).lines.map.with_index do  |line, index|
      index == 0 || line.empty? ? line : line.delete_prefix("# ")
    end 

    File.write(file, altered_lines.join)
  end

  # it {
  #   file_list.each { |file| add_comments(file) }
  # }
  # it {
  #   file_list.each { |file| remove_comments(file) }
  # }
end

