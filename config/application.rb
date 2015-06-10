require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Dinf
  class Application < Rails::Application

    config.app_generators.scaffold_controller :responders_controller

    config.generators do |g|
      g.test_framework :rspec,
                       fixtures:true,
                       view_spec:false,
                       helper_spec:false,
                       routing_spec:false,
                       request_spec:false,
                       controller_spec:true
      g.fixtures_replacement :factory_girl, dir: 'spec/factories'
    end
    config.active_record.raise_in_transactional_callbacks = true
  end
end
