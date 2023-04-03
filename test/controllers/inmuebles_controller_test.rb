require "test_helper"

class InmueblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inmueble = inmuebles(:one)
  end

  test "should get index" do
    get inmuebles_url
    assert_response :success
  end

  test "should get new" do
    get new_inmueble_url
    assert_response :success
  end

  test "should create inmueble" do
    assert_difference('Inmueble.count') do
      post inmuebles_url, params: { inmueble: { address: @inmueble.address, area: @inmueble.area, bathrooms: @inmueble.bathrooms, description: @inmueble.description, price: @inmueble.price, rooms: @inmueble.rooms } }
    end

    assert_redirected_to inmueble_url(Inmueble.last)
  end

  test "should show inmueble" do
    get inmueble_url(@inmueble)
    assert_response :success
  end

  test "should get edit" do
    get edit_inmueble_url(@inmueble)
    assert_response :success
  end

  test "should update inmueble" do
    patch inmueble_url(@inmueble), params: { inmueble: { address: @inmueble.address, area: @inmueble.area, bathrooms: @inmueble.bathrooms, description: @inmueble.description, price: @inmueble.price, rooms: @inmueble.rooms } }
    assert_redirected_to inmueble_url(@inmueble)
  end

  test "should destroy inmueble" do
    assert_difference('Inmueble.count', -1) do
      delete inmueble_url(@inmueble)
    end

    assert_redirected_to inmuebles_url
  end
end
