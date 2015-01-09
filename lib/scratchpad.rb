require 'scratchpad/version'
require 'scratchpad/middleware'
require 'scratchpad/page'

module Scratchpad
  class Engine < ::Rails::Engine; end

  class Railtie < Rails::Railtie
    initializer "scratchpad,configure_rails_initializer" do
      Rails.application.middleware.use Scratchpad::Middleware
    end
  end

end
