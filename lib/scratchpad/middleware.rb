module Scratchpad
  class Middleware
    def initialize app
      @app = app
    end

    def call env
      scratchpad = Scratchpad::Page.new(env)
      status, headers, response = @app.call(env)
      [status, headers, [response.body + scratchpad.to_html]]
    end
  end
end
