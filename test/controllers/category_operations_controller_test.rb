require "test_helper"

class CategoryOperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_operation = category_operations(:one)
  end

  test "should get index" do
    get category_operations_url
    assert_response :success
  end

  test "should get new" do
    get new_category_operation_url
    assert_response :success
  end

  test "should create category_operation" do
    assert_difference("CategoryOperation.count") do
      post category_operations_url, params: { category_operation: {  } }
    end

    assert_redirected_to category_operation_url(CategoryOperation.last)
  end

  test "should show category_operation" do
    get category_operation_url(@category_operation)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_operation_url(@category_operation)
    assert_response :success
  end

  test "should update category_operation" do
    patch category_operation_url(@category_operation), params: { category_operation: {  } }
    assert_redirected_to category_operation_url(@category_operation)
  end

  test "should destroy category_operation" do
    assert_difference("CategoryOperation.count", -1) do
      delete category_operation_url(@category_operation)
    end

    assert_redirected_to category_operations_url
  end
end
