require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Hashtagit
  class Application < Rails::Application

  Rails.application.config.middleware.insert_before 0, Rack::Cors do

    allow do
      origins '*'
      resource '*', :headers => :any, :methods => [:get, :post, :options]
    end

  end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.force_ssl = false
    # Rails.application.routes.default_url_options[:protocol] = 'https'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.



  end
end
