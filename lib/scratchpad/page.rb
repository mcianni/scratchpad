module Scratchpad
  class Page
    def initialize env
      env[:scratchpad] = self
    end

    def add content
      file, line = *caller[1].split(':')
      (@content ||= []) <<  { content: content.dup, file: file, line: line }
    end

    def to_html
      return "" unless @content
      ActionView::Base.new(File.dirname(__FILE__)+"../../../app/views").render( file: "scratchpad.html.erb", locals: { content: @content } )
    end

  end
end
