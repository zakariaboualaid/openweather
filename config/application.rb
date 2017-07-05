require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Openweather
  class Application < Rails::Application
    config.active_job.queue_adapter = :sidekiq
    config.owopts = { units: 'metric', APPID: '7d8c6cbff3d38689c8c61d73c3424b65', cnt: 1 }.freeze
    config.cities = %w[London Dubai Paris NewYork Islamabad].freeze
    config.autoload_paths << Rails.root.join('lib')
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
