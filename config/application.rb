require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyWebsite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Autoload and eager load the lib directory
    config.autoload_paths << Rails.root.join("lib")
    config.eager_load_paths << Rails.root.join("lib")

    # If there are specific subdirectories inside lib that you want to ignore,
    # consider organizing them outside lib or use Zeitwerk to ignore them explicitly:
    # Rails.autoloaders.main.ignore(Rails.root.join("lib/assets"))
    # Rails.autoloaders.main.ignore(Rails.root.join("lib/tasks"))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
