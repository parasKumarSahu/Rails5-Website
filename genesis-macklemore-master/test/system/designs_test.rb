require "application_system_test_case"

class DesignsTest < ApplicationSystemTestCase
  setup do
    @design = designs(:one)
  end

  test "visiting the index" do
    visit designs_url
    assert_selector "h1", text: "Designs"
  end

  test "creating a Design" do
    visit designs_url
    click_on "New Design"

    fill_in "Area", with: @design.area
    fill_in "Availability", with: @design.availability
    fill_in "Finishes", with: @design.finishes
    fill_in "Guide", with: @design.guide
    fill_in "Product", with: @design.product_id
    fill_in "Sectors", with: @design.sectors
    fill_in "Selector", with: @design.selector
    click_on "Create Design"

    assert_text "Design was successfully created"
    click_on "Back"
  end

  test "updating a Design" do
    visit designs_url
    click_on "Edit", match: :first

    fill_in "Area", with: @design.area
    fill_in "Availability", with: @design.availability
    fill_in "Finishes", with: @design.finishes
    fill_in "Guide", with: @design.guide
    fill_in "Product", with: @design.product_id
    fill_in "Sectors", with: @design.sectors
    fill_in "Selector", with: @design.selector
    click_on "Update Design"

    assert_text "Design was successfully updated"
    click_on "Back"
  end

  test "destroying a Design" do
    visit designs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Design was successfully destroyed"
  end
end
