require 'test_helper'

class MastermenteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mastermente_index_url
    assert_response :success
  end

end
