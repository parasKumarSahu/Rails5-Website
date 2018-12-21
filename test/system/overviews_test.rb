require "application_system_test_case"

class OverviewsTest < ApplicationSystemTestCase
  setup do
    @overview = overviews(:one)
  end

  test "visiting the index" do
    visit overviews_url
    assert_selector "h1", text: "Overviews"
  end

  test "creating a Overview" do
    visit overviews_url
    click_on "New Overview"

    fill_in "Body", with: @overview.body
    fill_in "Product", with: @overview.product_id
    click_on "Create Overview"

    assert_text "Overview was successfully created"
    click_on "Back"
  end

  test "updating a Overview" do
    visit overviews_url
    click_on "Edit", match: :first

    fill_in "Body", with: @overview.body
    fill_in "Product", with: @overview.product_id
    click_on "Update Overview"

    assert_text "Overview was successfully updated"
    click_on "Back"
  end

  test "destroying a Overview" do
    visit overviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Overview was successfully destroyed"
  end
end
