require "application_system_test_case"

class ResourcesTest < ApplicationSystemTestCase
  setup do
    @resource = resources(:one)
  end

  test "visiting the index" do
    visit resources_url
    assert_selector "h1", text: "Resources"
  end

  test "creating a Resource" do
    visit resources_url
    click_on "New Resource"

    fill_in "Category", with: @resource.category
    fill_in "Link", with: @resource.link
    fill_in "Name", with: @resource.name
    fill_in "Product", with: @resource.product_id
    fill_in "Type", with: @resource.type
    click_on "Create Resource"

    assert_text "Resource was successfully created"
    click_on "Back"
  end

  test "updating a Resource" do
    visit resources_url
    click_on "Edit", match: :first

    fill_in "Category", with: @resource.category
    fill_in "Link", with: @resource.link
    fill_in "Name", with: @resource.name
    fill_in "Product", with: @resource.product_id
    fill_in "Type", with: @resource.type
    click_on "Update Resource"

    assert_text "Resource was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource" do
    visit resources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource was successfully destroyed"
  end
end
