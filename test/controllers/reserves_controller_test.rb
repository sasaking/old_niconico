require 'test_helper'

class ReservesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserf = reserves(:one)
  end

  test "should get index" do
    get reserves_url
    assert_response :success
  end

  test "should get new" do
    get new_reserf_url
    assert_response :success
  end

  test "should create reserf" do
    assert_difference('Reserve.count') do
      post reserves_url, params: { reserf: { beginner: @reserf.beginner, child_age: @reserf.child_age, child_kana: @reserf.child_kana, child_name: @reserf.child_name, email: @reserf.email, event: @reserf.event, kana: @reserf.kana, name: @reserf.name, qa: @reserf.qa, remarks: @reserf.remarks, reserve_period: @reserf.reserve_period, tel: @reserf.tel } }
    end

    assert_redirected_to reserf_url(Reserve.last)
  end

  test "should show reserf" do
    get reserf_url(@reserf)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserf_url(@reserf)
    assert_response :success
  end

  test "should update reserf" do
    patch reserf_url(@reserf), params: { reserf: { beginner: @reserf.beginner, child_age: @reserf.child_age, child_kana: @reserf.child_kana, child_name: @reserf.child_name, email: @reserf.email, event: @reserf.event, kana: @reserf.kana, name: @reserf.name, qa: @reserf.qa, remarks: @reserf.remarks, reserve_period: @reserf.reserve_period, tel: @reserf.tel } }
    assert_redirected_to reserf_url(@reserf)
  end

  test "should destroy reserf" do
    assert_difference('Reserve.count', -1) do
      delete reserf_url(@reserf)
    end

    assert_redirected_to reserves_url
  end
end
