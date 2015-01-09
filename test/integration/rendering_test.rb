require 'test_helper'

class RenderingTest < ActionDispatch::IntegrationTest

  test "the scratchpad should not render if empty" do
    get '/'
    assert_select "#scratchpad", 0
  end

  test "the scratchpad should render if not empty" do
    get '/scratch'
    assert_select "#scratchpad"
  end

  test "only one scratchpad should render if multiple scratches" do
    get '/multiple_scratch'
    assert_select "#scratchpad", 1
  end

  test "multiple scratches should render for multiple scratches" do
    get '/multiple_scratch'
    assert_select "#scratchpad" do
      assert_select ".scratch", 2
    end
  end

  test "object scratches should inspect the object" do
    get '/scratch_object'
    assert_select ".scratch", { text: "#", count: 0 }
    #assert_select ".scratch" do |element|
    #  assert_match(/bar/, element.html)
    #end
  end
end
