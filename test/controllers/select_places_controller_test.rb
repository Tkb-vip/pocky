require 'test_helper'

class SelectPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @select_place = select_places(:one)
  end

  test "should get index" do
    get select_places_url
    assert_response :success
  end

  test "should get new" do
    get new_select_place_url
    assert_response :success
  end

  test "should create select_place" do
    assert_difference('SelectPlace.count') do
      post select_places_url, params: { select_place: { club_id: @select_place.club_id, id: @select_place.id, place_id: @select_place.place_id } }
    end

    assert_redirected_to select_place_url(SelectPlace.last)
  end

  test "should show select_place" do
    get select_place_url(@select_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_select_place_url(@select_place)
    assert_response :success
  end

  test "should update select_place" do
    patch select_place_url(@select_place), params: { select_place: { club_id: @select_place.club_id, id: @select_place.id, place_id: @select_place.place_id } }
    assert_redirected_to select_place_url(@select_place)
  end

  test "should destroy select_place" do
    assert_difference('SelectPlace.count', -1) do
      delete select_place_url(@select_place)
    end

    assert_redirected_to select_places_url
  end
end
