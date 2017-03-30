require 'test_helper'

class ProductCachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_cach = product_caches(:one)
  end

  test "should get index" do
    get product_caches_url
    assert_response :success
  end

  test "should get new" do
    get new_product_cach_url
    assert_response :success
  end

  test "should create product_cach" do
    assert_difference('ProductCache.count') do
      post product_caches_url, params: { product_cach: { date_created: @product_cach.date_created, key: @product_cach.key, name: @product_cach.name, values: @product_cach.values } }
    end

    assert_redirected_to product_cach_url(ProductCache.last)
  end

  test "should show product_cach" do
    get product_cach_url(@product_cach)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_cach_url(@product_cach)
    assert_response :success
  end

  test "should update product_cach" do
    patch product_cach_url(@product_cach), params: { product_cach: { date_created: @product_cach.date_created, key: @product_cach.key, name: @product_cach.name, values: @product_cach.values } }
    assert_redirected_to product_cach_url(@product_cach)
  end

  test "should destroy product_cach" do
    assert_difference('ProductCache.count', -1) do
      delete product_cach_url(@product_cach)
    end

    assert_redirected_to product_caches_url
  end
end
