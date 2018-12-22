require "application_system_test_case"

class ManufacturingsTest < ApplicationSystemTestCase
  setup do
    @manufacturing = manufacturings(:one)
  end

  test "visiting the index" do
    visit manufacturings_url
    assert_selector "h1", text: "Manufacturings"
  end

  test "creating a Manufacturing" do
    visit manufacturings_url
    click_on "New Manufacturing"

    fill_in "Inputs", with: @manufacturing.inputs
    fill_in "Process", with: @manufacturing.process
    fill_in "Product", with: @manufacturing.product_id
    click_on "Create Manufacturing"

    assert_text "Manufacturing was successfully created"
    click_on "Back"
  end

  test "updating a Manufacturing" do
    visit manufacturings_url
    click_on "Edit", match: :first

    fill_in "Inputs", with: @manufacturing.inputs
    fill_in "Process", with: @manufacturing.process
    fill_in "Product", with: @manufacturing.product_id
    click_on "Update Manufacturing"

    assert_text "Manufacturing was successfully updated"
    click_on "Back"
  end

  test "destroying a Manufacturing" do
    visit manufacturings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manufacturing was successfully destroyed"
  end
end
