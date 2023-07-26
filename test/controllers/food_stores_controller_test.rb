require 'test_helper'

class FoodStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_store = food_stores(:one)
  end

  test "should get index" do
    get food_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_food_store_url
    assert_response :success
  end

  test "should create food_store" do
    assert_difference('FoodStore.count') do
      post food_stores_url, params: { food_store: { city: @food_store.city, closeHours: @food_store.closeHours, name: @food_store.name, openHours: @food_store.openHours, streetAddress: @food_store.streetAddress, zipCode: @food_store.zipCode } }
    end

    assert_redirected_to food_store_url(FoodStore.last)
  end

  test "should show food_store" do
    get food_store_url(@food_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_store_url(@food_store)
    assert_response :success
  end

  test "should update food_store" do
    patch food_store_url(@food_store), params: { food_store: { city: @food_store.city, closeHours: @food_store.closeHours, name: @food_store.name, openHours: @food_store.openHours, streetAddress: @food_store.streetAddress, zipCode: @food_store.zipCode } }
    assert_redirected_to food_store_url(@food_store)
  end

  test "should destroy food_store" do
    assert_difference('FoodStore.count', -1) do
      delete food_store_url(@food_store)
    end

    assert_redirected_to food_stores_url
  end
end
