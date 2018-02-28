# Load the Rails application.
require File.expand_path('../application', __FILE__)

raw_config = File.read("#{Rails.root}/config/app_config.yml")
APP_CONFIG = YAML.load(raw_config)[Rails.env].deep_symbolize_keys

# Initialize the Rails application.
Rails.application.initialize!
