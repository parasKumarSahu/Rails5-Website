require "application_system_test_case"

class TechnicalsTest < ApplicationSystemTestCase
  setup do
    @technical = technicals(:one)
  end

  test "visiting the index" do
    visit technicals_url
    assert_selector "h1", text: "Technicals"
  end

  test "creating a Technical" do
    visit technicals_url
    click_on "New Technical"

    fill_in "Composition", with: @technical.composition
    fill_in "Install", with: @technical.install
    fill_in "Manufacturing", with: @technical.manufacturing
    fill_in "Perform", with: @technical.perform
    fill_in "Product", with: @technical.product_id
    click_on "Create Technical"

    assert_text "Technical was successfully created"
    click_on "Back"
  end

  test "updating a Technical" do
    visit technicals_url
    click_on "Edit", match: :first

    fill_in "Composition", with: @technical.composition
    fill_in "Install", with: @technical.install
    fill_in "Manufacturing", with: @technical.manufacturing
    fill_in "Perform", with: @technical.perform
    fill_in "Product", with: @technical.product_id
    click_on "Update Technical"

    assert_text "Technical was successfully updated"
    click_on "Back"
  end

  test "destroying a Technical" do
    visit technicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Technical was successfully destroyed"
  end
end
