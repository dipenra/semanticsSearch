require 'test_helper'

class SemanticsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get semantics_index_url
    assert_response :success
  end

end
