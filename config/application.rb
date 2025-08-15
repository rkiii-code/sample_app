require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end


# class RequestLogger
#   def initialize(app)
#     @app = app
#   end

#   def call(env)
#     puts "=== Rack env ==="
#     env.each do |k, v|
#       puts "#{k}: #{v}"
#     end
#     puts "=== End of env ==="

#     @app.call(env)
#   end
# end

# # ミドルウェアとして追加
# module YourApp
#   class Application < Rails::Application
#     config.middleware.use RequestLogger
#   end
# end
