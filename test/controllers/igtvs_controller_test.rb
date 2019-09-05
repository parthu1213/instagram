require 'test_helper'

class IgtvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @igtv = igtvs(:one)
  end

  test "should get index" do
    get igtvs_url
    assert_response :success
  end

  test "should get new" do
    get new_igtv_url
    assert_response :success
  end

  test "should create igtv" do
    assert_difference('Igtv.count') do
      post igtvs_url, params: { igtv: {  } }
    end

    assert_redirected_to igtv_url(Igtv.last)
  end

  test "should show igtv" do
    get igtv_url(@igtv)
    assert_response :success
  end

  test "should get edit" do
    get edit_igtv_url(@igtv)
    assert_response :success
  end

  test "should update igtv" do
    patch igtv_url(@igtv), params: { igtv: {  } }
    assert_redirected_to igtv_url(@igtv)
  end

  test "should destroy igtv" do
    assert_difference('Igtv.count', -1) do
      delete igtv_url(@igtv)
    end

    assert_redirected_to igtvs_url
  end
end
