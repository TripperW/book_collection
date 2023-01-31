require "test_helper"

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get delete" do
    get book_delete_url
    assert_response :success
  end
end
