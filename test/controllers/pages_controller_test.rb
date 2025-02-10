require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get tasks" do
    get pages_tasks_url
    assert_response :success
  end
end
