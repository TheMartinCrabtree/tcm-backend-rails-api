require 'test_helper'

class OrderjoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderjoin = orderjoins(:one)
  end

  test "should get index" do
    get orderjoins_url, as: :json
    assert_response :success
  end

  test "should create orderjoin" do
    assert_difference('Orderjoin.count') do
      post orderjoins_url, params: { orderjoin: { item_id: @orderjoin.item_id, itemquantity: @orderjoin.itemquantity, order_id: @orderjoin.order_id } }, as: :json
    end

    assert_response 201
  end

  test "should show orderjoin" do
    get orderjoin_url(@orderjoin), as: :json
    assert_response :success
  end

  test "should update orderjoin" do
    patch orderjoin_url(@orderjoin), params: { orderjoin: { item_id: @orderjoin.item_id, itemquantity: @orderjoin.itemquantity, order_id: @orderjoin.order_id } }, as: :json
    assert_response 200
  end

  test "should destroy orderjoin" do
    assert_difference('Orderjoin.count', -1) do
      delete orderjoin_url(@orderjoin), as: :json
    end

    assert_response 204
  end
end
