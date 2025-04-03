require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Disable code reloading between requests (to improve performance in production).
  config.enable_reloading = false

  # Eager load code on boot to reduce memory and improve performance.
  config.eager_load = true

  # Disable full error reports.
  config.consider_all_requests_local = false

  # Enable fragment caching in views for better performance.
  config.action_controller.perform_caching = true

  # Cache assets for far-future expiry since they are digest stamped.
  config.public_file_server.headers = { "cache-control" => "public, max-age=#{1.year.to_i}" }

  # Use local file storage for file uploads.
  config.active_storage.service = :local

  # Assume the application is behind an SSL-terminating reverse proxy.
  config.assume_ssl = true

  # Enforce SSL for all access to the app.
  config.force_ssl = true

  # Use STDOUT for logging (helpful for Render and other platforms).
  config.logger = ActiveSupport::TaggedLogging.logger(STDOUT)

  # Set logging level (info is a good default).
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # Prevent excessive logging from health check endpoints.
  config.silence_healthcheck_path = "/up"

  # Prevent logging deprecation warnings.
  config.active_support.report_deprecations = false

  # Disable schema dumping after migrations (not needed for a databaseless app).
  config.active_record.dump_schema_after_migration = false

  # Handle DNS rebinding protection (optional, adjust as needed).
  # config.hosts = ["yourdomain.com"] # Update with your actual domain

  # Set the default URL options for email (if used).
  config.action_mailer.default_url_options = { host: "example.com" }

  # Locale fallbacks for I18n (ensure proper translations).
  config.i18n.fallbacks = true

  # Use a durable cache store in production (optional, depending on your needs).
  # config.cache_store = :mem_cache_store

  # Additional configurations for Active Job (optional).
  # config.active_job.queue_adapter = :resque

  # Disable ActiveRecord features since there's no database.
  config.active_record.legacy_connection_handling = false
end
