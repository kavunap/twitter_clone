require 'test_helper'

class TweesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twee = twees(:one)
  end

  test "should get index" do
    get twees_url
    assert_response :success
  end

  test "should get new" do
    get new_twee_url
    assert_response :success
  end

  test "should create twee" do
    assert_difference('Twee.count') do
      post twees_url, params: { twee: { content: @twee.content, created_on: @twee.created_on } }
    end

    assert_redirected_to twee_url(Twee.last)
  end

  test "should show twee" do
    get twee_url(@twee)
    assert_response :success
  end

  test "should get edit" do
    get edit_twee_url(@twee)
    assert_response :success
  end

  test "should update twee" do
    patch twee_url(@twee), params: { twee: { content: @twee.content, created_on: @twee.created_on } }
    assert_redirected_to twee_url(@twee)
  end

  test "should destroy twee" do
    assert_difference('Twee.count', -1) do
      delete twee_url(@twee)
    end

    assert_redirected_to twees_url
  end
end
