module Scratchpad
  class Middleware
    def initialize app
      @app = app
    end

    def call env
      scratchpad = Scratchpad::Page.new(env)
      status, headers, response = @app.call(env)
      if headers["Content-Type"].include? "text/html"
        [status, headers, [response.body + scratchpad.to_html]]
      else
        [status, headers, response]
      end
    end
  end
end
