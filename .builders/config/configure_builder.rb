def builder
  @builder ||= KBuilder::BaseBuilder.init
end

KBuilder.configure do |config|
  raise 'app.settings.app_path is required' if app.settings.app_path.nil?

  base_folder       = app.settings.app_path

  # Target folders
  config.target_folders.add(:root, base_folder)
  config.target_folders.add(:lib, :root, 'lib/funcky')
  config.target_folders.add(:spec, :root, 'spec/funcky')

  # config.target_folders.add(:data, :root, '.data')
  # config.target_folders.add(:builder, :root, '.builders')

  config.template_folders.add(:local_template, base_folder, '.templates')
end
