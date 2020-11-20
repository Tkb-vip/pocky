require 'test_helper'

class OtoiawasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @otoiawase = otoiawases(:one)
  end

  test "should get index" do
    get otoiawases_url
    assert_response :success
  end

  test "should get new" do
    get new_otoiawase_url
    assert_response :success
  end

  test "should create otoiawase" do
    assert_difference('Otoiawase.count') do
      post otoiawases_url, params: { otoiawase: {  } }
    end

    assert_redirected_to otoiawase_url(Otoiawase.last)
  end

  test "should show otoiawase" do
    get otoiawase_url(@otoiawase)
    assert_response :success
  end

  test "should get edit" do
    get edit_otoiawase_url(@otoiawase)
    assert_response :success
  end

  test "should update otoiawase" do
    patch otoiawase_url(@otoiawase), params: { otoiawase: {  } }
    assert_redirected_to otoiawase_url(@otoiawase)
  end

  test "should destroy otoiawase" do
    assert_difference('Otoiawase.count', -1) do
      delete otoiawase_url(@otoiawase)
    end

    assert_redirected_to otoiawases_url
  end
end
