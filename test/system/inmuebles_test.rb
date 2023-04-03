require "application_system_test_case"

class InmueblesTest < ApplicationSystemTestCase
  setup do
    @inmueble = inmuebles(:one)
  end

  test "visiting the index" do
    visit inmuebles_url
    assert_selector "h1", text: "Inmuebles"
  end

  test "creating a Inmueble" do
    visit inmuebles_url
    click_on "New Inmueble"

    fill_in "Address", with: @inmueble.address
    fill_in "Area", with: @inmueble.area
    fill_in "Bathrooms", with: @inmueble.bathrooms
    fill_in "Description", with: @inmueble.description
    fill_in "Price", with: @inmueble.price
    fill_in "Rooms", with: @inmueble.rooms
    click_on "Create Inmueble"

    assert_text "Inmueble was successfully created"
    click_on "Back"
  end

  test "updating a Inmueble" do
    visit inmuebles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @inmueble.address
    fill_in "Area", with: @inmueble.area
    fill_in "Bathrooms", with: @inmueble.bathrooms
    fill_in "Description", with: @inmueble.description
    fill_in "Price", with: @inmueble.price
    fill_in "Rooms", with: @inmueble.rooms
    click_on "Update Inmueble"

    assert_text "Inmueble was successfully updated"
    click_on "Back"
  end

  test "destroying a Inmueble" do
    visit inmuebles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inmueble was successfully destroyed"
  end
end
