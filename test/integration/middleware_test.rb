require 'test_helper'

class MiddlewareTest < ActionDispatch::IntegrationTest

  test "the scratchpad should exist without adding content" do
    get '/'
    assert request.env[:scratchpad]
  end

  test "the scratchpad should exist after adding content" do
    get '/scratch'
    assert request.env[:scratchpad]
  end

  test "the scratchpad should be unique between requests" do
    get '/scratch'
    scratch_one = request.env[:scratchpad]
    get '/scratch'
    assert_not_equal request.env[:scratchpad], scratch_one
  end

end
