require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.eager_load = true
  config.enable_reloading = false

  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  config.require_master_key = true

  config.assets.compile = false

  config.active_storage.service = :local

  config.force_ssl = true

  config.logger = ActiveSupport::Logger.new($stdout)
    .tap { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  config.log_tags = [:request_id]

  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  config.action_mailer.perform_caching = false

  config.active_support.report_deprecations = false

  config.active_record.dump_schema_after_migration = false
end
