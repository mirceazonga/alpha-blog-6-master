# config/application.rb

require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module AlphaBlog
  class Application < Rails::Application
    config.load_defaults '7.0'


    # Add the following line to explicitly use the psych engine
    config.yaml = ActiveSupport::OrderedOptions.new
    config.yaml.engine = Psych

    # Rest of the configuration...
  end
end
