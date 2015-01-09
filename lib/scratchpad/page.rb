module Scratchpad
  class Page
    def initialize env
      env[:scratchpad] = self
    end

    def add content
      (@content ||= []) << content
    end

    def to_html
      return "" unless @content
      %Q{ 
      <div id="scratchpad">
        #{@content.map { |i| "<div class='scratch'>#{i}</div>" }.join}
      </div>
      }
    end
  end
end
