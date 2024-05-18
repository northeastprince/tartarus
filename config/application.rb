require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Tartarus
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])

    host = ENV["HOST"] || "localhost"
    config.action_mailer.default_url_options = {host:}
  end
end
