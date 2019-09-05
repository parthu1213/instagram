require 'test_helper'

class TaggedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tagged = taggeds(:one)
  end

  test "should get index" do
    get taggeds_url
    assert_response :success
  end

  test "should get new" do
    get new_tagged_url
    assert_response :success
  end

  test "should create tagged" do
    assert_difference('Tagged.count') do
      post taggeds_url, params: { tagged: {  } }
    end

    assert_redirected_to tagged_url(Tagged.last)
  end

  test "should show tagged" do
    get tagged_url(@tagged)
    assert_response :success
  end

  test "should get edit" do
    get edit_tagged_url(@tagged)
    assert_response :success
  end

  test "should update tagged" do
    patch tagged_url(@tagged), params: { tagged: {  } }
    assert_redirected_to tagged_url(@tagged)
  end

  test "should destroy tagged" do
    assert_difference('Tagged.count', -1) do
      delete tagged_url(@tagged)
    end

    assert_redirected_to taggeds_url
  end
end
