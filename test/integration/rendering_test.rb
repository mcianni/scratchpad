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

  test "only one scratchpad should render if multiple scratchs" do
    get '/multiple_scratch'
    assert_select "#scratchpad", 1
  end

  test "multiple scratchs should render for multiple scratchs" do
    get '/multiple_scratch'
    assert_select "#scratchpad" do
      assert_select ".scratch", 2
    end
  end
end
