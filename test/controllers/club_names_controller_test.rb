require 'test_helper'

class ClubNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club_name = club_names(:one)
  end

  test "should get index" do
    get club_names_url
    assert_response :success
  end

  test "should get new" do
    get new_club_name_url
    assert_response :success
  end

  test "should create club_name" do
    assert_difference('ClubName.count') do
      post club_names_url, params: { club_name: { name: @club_name.name, sort: @club_name.sort } }
    end

    assert_redirected_to club_name_url(ClubName.last)
  end

  test "should show club_name" do
    get club_name_url(@club_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_club_name_url(@club_name)
    assert_response :success
  end

  test "should update club_name" do
    patch club_name_url(@club_name), params: { club_name: { name: @club_name.name, sort: @club_name.sort } }
    assert_redirected_to club_name_url(@club_name)
  end

  test "should destroy club_name" do
    assert_difference('ClubName.count', -1) do
      delete club_name_url(@club_name)
    end

    assert_redirected_to club_names_url
  end
end
