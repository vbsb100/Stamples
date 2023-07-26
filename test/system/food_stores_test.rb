require "application_system_test_case"

class FoodStoresTest < ApplicationSystemTestCase
  setup do
    @food_store = food_stores(:one)
  end

  test "visiting the index" do
    visit food_stores_url
    assert_selector "h1", text: "Food Stores"
  end

  test "creating a Food store" do
    visit food_stores_url
    click_on "New Food Store"

    fill_in "City", with: @food_store.city
    fill_in "Closehours", with: @food_store.closeHours
    fill_in "Name", with: @food_store.name
    fill_in "Openhours", with: @food_store.openHours
    fill_in "Streetaddress", with: @food_store.streetAddress
    fill_in "Zipcode", with: @food_store.zipCode
    click_on "Create Food store"

    assert_text "Food store was successfully created"
    click_on "Back"
  end

  test "updating a Food store" do
    visit food_stores_url
    click_on "Edit", match: :first

    fill_in "City", with: @food_store.city
    fill_in "Closehours", with: @food_store.closeHours
    fill_in "Name", with: @food_store.name
    fill_in "Openhours", with: @food_store.openHours
    fill_in "Streetaddress", with: @food_store.streetAddress
    fill_in "Zipcode", with: @food_store.zipCode
    click_on "Update Food store"

    assert_text "Food store was successfully updated"
    click_on "Back"
  end

  test "destroying a Food store" do
    visit food_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food store was successfully destroyed"
  end
end
