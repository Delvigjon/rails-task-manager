require "test_helper"

class TaskTemplatesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get task_templates_edit_url
    assert_response :success
  end

  test "should get update" do
    get task_templates_update_url
    assert_response :success
  end

  test "should get destroy" do
    get task_templates_destroy_url
    assert_response :success
  end
end
