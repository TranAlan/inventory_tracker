require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module InventoryTracker
  class Application < Rails::Application
    config.load_defaults 7.0
    config.autoload_paths += %W(#{config.root}/services)
  end
end
