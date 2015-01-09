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
    assert_select ".scratch", { html: "#", count: 0 }
  end

  test "object scratches should render object at time of scratch" do
    get '/scratch_with_changed_object'
    assert_select ".scratch", { html: /baz/, count: 1 }
  end

  test "object scratches should render changed object at each scratch" do
    get '/multiple_scratch_with_changed_object'
    assert_select ".scratch", { html: /baz/,  count: 1 }
    assert_select ".scratch", { html: /buzz/, count: 1 }
  end
end
