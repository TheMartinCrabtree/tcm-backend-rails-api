require 'test_helper'

class ShoppingcartjoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoppingcartjoin = shoppingcartjoins(:one)
  end

  test "should get index" do
    get shoppingcartjoins_url, as: :json
    assert_response :success
  end

  test "should create shoppingcartjoin" do
    assert_difference('Shoppingcartjoin.count') do
      post shoppingcartjoins_url, params: { shoppingcartjoin: { item_id: @shoppingcartjoin.item_id, itemquantity: @shoppingcartjoin.itemquantity, shoppingcart_id: @shoppingcartjoin.shoppingcart_id } }, as: :json
    end

    assert_response 201
  end

  test "should show shoppingcartjoin" do
    get shoppingcartjoin_url(@shoppingcartjoin), as: :json
    assert_response :success
  end

  test "should update shoppingcartjoin" do
    patch shoppingcartjoin_url(@shoppingcartjoin), params: { shoppingcartjoin: { item_id: @shoppingcartjoin.item_id, itemquantity: @shoppingcartjoin.itemquantity, shoppingcart_id: @shoppingcartjoin.shoppingcart_id } }, as: :json
    assert_response 200
  end

  test "should destroy shoppingcartjoin" do
    assert_difference('Shoppingcartjoin.count', -1) do
      delete shoppingcartjoin_url(@shoppingcartjoin), as: :json
    end

    assert_response 204
  end
end
