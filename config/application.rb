require_relative "boot"

require "rails/all"


Bundler.require(*Rails.groups)

module RailsSeven
  class Application < Rails::Application
    
    config.load_defaults 7.0

  end
end
