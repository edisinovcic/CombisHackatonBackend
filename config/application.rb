require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CombisHackatonBackend
  class Application < Rails::Application
    class Application < Rails::Application

      # ...snip...

      config.middleware.use Rack::Cors do
        allow do
          origins '*'
          resource '*',
                   :headers => :any,
                   :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
                   :methods => [:get, :post, :options, :delete, :put]
        end
      end
    end
    config.api_only = true
  end
end
