require 'test_helper'

class SemanticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_value1 = "iphone"
    @search_value2 = "pizza"
  end

  test "should get index" do
    get "/"
    assert_response :success
  end

  test "should response with success" do
    post("/semantics", productName: @search_value1)

    #assert response
    assert_response :success

    #assert DB Insert
    assert_not_nil ProductCache.find_by(name: @search_value1)
  end

  test "should insert data in database" do
    post("/semantics", productName: @search_value2)

    #assert DB Insert
    assert_not_nil ProductCache.find_by(name: @search_value2)
  end

end
