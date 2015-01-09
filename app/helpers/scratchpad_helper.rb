module ScratchpadHelper
  def scratchpad content
    request.env[:scratchpad].add content
  end
end
