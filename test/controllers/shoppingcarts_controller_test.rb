require 'test_helper'

class ShoppingcartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoppingcart = shoppingcarts(:one)
  end

  test "should get index" do
    get shoppingcarts_url, as: :json
    assert_response :success
  end

  test "should create shoppingcart" do
    assert_difference('Shoppingcart.count') do
      post shoppingcarts_url, params: { shoppingcart: { user_id: @shoppingcart.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show shoppingcart" do
    get shoppingcart_url(@shoppingcart), as: :json
    assert_response :success
  end

  test "should update shoppingcart" do
    patch shoppingcart_url(@shoppingcart), params: { shoppingcart: { user_id: @shoppingcart.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy shoppingcart" do
    assert_difference('Shoppingcart.count', -1) do
      delete shoppingcart_url(@shoppingcart), as: :json
    end

    assert_response 204
  end
end
