module Scratchpad
  class Page
    def initialize env
      env[:scratchpad] = self
    end

    def add content
      (@content ||= []) << content.dup
    end

    def to_html
      return "" unless @content
      %Q{ 
      <div id="scratchpad" style="position:absolute;bottom:0;background-color:#333;color:whitesmoke;width:100%;padding:5px;">
        #{@content.map { |i| "<div class='scratch'>#{CGI::escapeHTML(i.inspect)}</div>" }.join}
      </div>
      }
    end
  end
end
