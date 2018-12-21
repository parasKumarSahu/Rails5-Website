require "application_system_test_case"

class DecorsTest < ApplicationSystemTestCase
  setup do
    @decor = decors(:one)
  end

  test "visiting the index" do
    visit decors_url
    assert_selector "h1", text: "Decors"
  end

  test "creating a Decor" do
    visit decors_url
    click_on "New Decor"

    fill_in "Image path", with: @decor.image_path
    fill_in "Image size", with: @decor.image_size
    fill_in "Image type", with: @decor.image_type
    fill_in "Name", with: @decor.name
    fill_in "Number", with: @decor.number
    fill_in "Type", with: @decor.type
    click_on "Create Decor"

    assert_text "Decor was successfully created"
    click_on "Back"
  end

  test "updating a Decor" do
    visit decors_url
    click_on "Edit", match: :first

    fill_in "Image path", with: @decor.image_path
    fill_in "Image size", with: @decor.image_size
    fill_in "Image type", with: @decor.image_type
    fill_in "Name", with: @decor.name
    fill_in "Number", with: @decor.number
    fill_in "Type", with: @decor.type
    click_on "Update Decor"

    assert_text "Decor was successfully updated"
    click_on "Back"
  end

  test "destroying a Decor" do
    visit decors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Decor was successfully destroyed"
  end
end
