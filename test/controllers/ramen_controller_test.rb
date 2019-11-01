require 'test_helper'

class RamenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raman = ramen(:one)
  end

  test "should get index" do
    get ramen_url
    assert_response :success
  end

  test "should get new" do
    get new_raman_url
    assert_response :success
  end

  test "should create raman" do
    assert_difference('Raman.count') do
      post ramen_url, params: { raman: { Brand: @raman.Brand, Country: @raman.Country, Stars: @raman.Stars, Style: @raman.Style, Variety: @raman.Variety } }
    end

    assert_redirected_to raman_url(Raman.last)
  end

  test "should show raman" do
    get raman_url(@raman)
    assert_response :success
  end

  test "should get edit" do
    get edit_raman_url(@raman)
    assert_response :success
  end

  test "should update raman" do
    patch raman_url(@raman), params: { raman: { Brand: @raman.Brand, Country: @raman.Country, Stars: @raman.Stars, Style: @raman.Style, Variety: @raman.Variety } }
    assert_redirected_to raman_url(@raman)
  end

  test "should destroy raman" do
    assert_difference('Raman.count', -1) do
      delete raman_url(@raman)
    end

    assert_redirected_to ramen_url
  end
end
