require 'test_helper'

class UfPricesControllerTest < ActionController::TestCase
  setup do
    @uf_price = uf_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uf_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uf_price" do
    assert_difference('UfPrice.count') do
      post :create, uf_price: { uf_price: @uf_price.uf_price }
    end

    assert_redirected_to uf_price_path(assigns(:uf_price))
  end

  test "should show uf_price" do
    get :show, id: @uf_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uf_price
    assert_response :success
  end

  test "should update uf_price" do
    patch :update, id: @uf_price, uf_price: { uf_price: @uf_price.uf_price }
    assert_redirected_to uf_price_path(assigns(:uf_price))
  end

  test "should destroy uf_price" do
    assert_difference('UfPrice.count', -1) do
      delete :destroy, id: @uf_price
    end

    assert_redirected_to uf_prices_path
  end
end
