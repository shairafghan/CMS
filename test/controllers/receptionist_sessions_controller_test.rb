require 'test_helper'

class ReceptionistSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get receptionist_sessions_new_url
    assert_response :success
  end

end
