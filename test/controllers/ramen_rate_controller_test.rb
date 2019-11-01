require 'test_helper'

class RamenRateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ramen_rate_index_url
    assert_response :success
  end

end
