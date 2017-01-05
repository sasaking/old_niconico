require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get schedule" do
    get main_schedule_url
    assert_response :success
  end

  test "should get event" do
    get main_event_url
    assert_response :success
  end

  test "should get creater" do
    get main_creater_url
    assert_response :success
  end

  test "should get art" do
    get main_art_url
    assert_response :success
  end

end
