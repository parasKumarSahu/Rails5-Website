require "application_system_test_case"

class ReferencesTest < ApplicationSystemTestCase
  setup do
    @reference = references(:one)
  end

  test "visiting the index" do
    visit references_url
    assert_selector "h1", text: "References"
  end

  test "creating a Reference" do
    visit references_url
    click_on "New Reference"

    fill_in "Code", with: @reference.code
    fill_in "Customer", with: @reference.customer
    fill_in "Image", with: @reference.image
    fill_in "Location", with: @reference.location
    fill_in "Product", with: @reference.product
    fill_in "Project", with: @reference.project
    fill_in "Quantity", with: @reference.quantity
    fill_in "Type", with: @reference.type
    fill_in "Year", with: @reference.year
    click_on "Create Reference"

    assert_text "Reference was successfully created"
    click_on "Back"
  end

  test "updating a Reference" do
    visit references_url
    click_on "Edit", match: :first

    fill_in "Code", with: @reference.code
    fill_in "Customer", with: @reference.customer
    fill_in "Image", with: @reference.image
    fill_in "Location", with: @reference.location
    fill_in "Product", with: @reference.product
    fill_in "Project", with: @reference.project
    fill_in "Quantity", with: @reference.quantity
    fill_in "Type", with: @reference.type
    fill_in "Year", with: @reference.year
    click_on "Update Reference"

    assert_text "Reference was successfully updated"
    click_on "Back"
  end

  test "destroying a Reference" do
    visit references_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reference was successfully destroyed"
  end
end
