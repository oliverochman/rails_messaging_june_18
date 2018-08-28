require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Mailboxer
  class Application < Rails::Application
    config.action_mailer.default_url_options = { host: 'ca-mailboxer.herokuapp.com' }

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.test_framework :rspec
    end
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :put, :delete]
      end
    end
  end
end


