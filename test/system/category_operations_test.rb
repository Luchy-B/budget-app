require "application_system_test_case"

class CategoryOperationsTest < ApplicationSystemTestCase
  setup do
    @category_operation = category_operations(:one)
  end

  test "visiting the index" do
    visit category_operations_url
    assert_selector "h1", text: "Category operations"
  end

  test "should create category operation" do
    visit category_operations_url
    click_on "New category operation"

    click_on "Create Category operation"

    assert_text "Category operation was successfully created"
    click_on "Back"
  end

  test "should update Category operation" do
    visit category_operation_url(@category_operation)
    click_on "Edit this category operation", match: :first

    click_on "Update Category operation"

    assert_text "Category operation was successfully updated"
    click_on "Back"
  end

  test "should destroy Category operation" do
    visit category_operation_url(@category_operation)
    click_on "Destroy this category operation", match: :first

    assert_text "Category operation was successfully destroyed"
  end
end
