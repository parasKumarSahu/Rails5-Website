require "application_system_test_case"

class PerformencesTest < ApplicationSystemTestCase
  setup do
    @performence = performences(:one)
  end

  test "visiting the index" do
    visit performences_url
    assert_selector "h1", text: "Performences"
  end

  test "creating a Performence" do
    visit performences_url
    click_on "New Performence"

    fill_in "Features", with: @performence.features
    fill_in "Maintenance", with: @performence.maintenance
    fill_in "Product", with: @performence.product_id
    fill_in "Warranty", with: @performence.warranty
    click_on "Create Performence"

    assert_text "Performence was successfully created"
    click_on "Back"
  end

  test "updating a Performence" do
    visit performences_url
    click_on "Edit", match: :first

    fill_in "Features", with: @performence.features
    fill_in "Maintenance", with: @performence.maintenance
    fill_in "Product", with: @performence.product_id
    fill_in "Warranty", with: @performence.warranty
    click_on "Update Performence"

    assert_text "Performence was successfully updated"
    click_on "Back"
  end

  test "destroying a Performence" do
    visit performences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Performence was successfully destroyed"
  end
end
