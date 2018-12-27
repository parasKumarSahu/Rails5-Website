require "application_system_test_case"

class UserInfosTest < ApplicationSystemTestCase
  setup do
    @user_info = user_infos(:one)
  end

  test "visiting the index" do
    visit user_infos_url
    assert_selector "h1", text: "User Infos"
  end

  test "creating a User info" do
    visit user_infos_url
    click_on "New User Info"

    fill_in "Alt number", with: @user_info.alt_number
    fill_in "Birthday", with: @user_info.birthday
    fill_in "Current office", with: @user_info.current_office
    fill_in "Designation", with: @user_info.designation
    fill_in "Extension", with: @user_info.extension
    fill_in "Image", with: @user_info.image
    fill_in "Mob number", with: @user_info.mob_number
    fill_in "Name", with: @user_info.name
    fill_in "Permanent office", with: @user_info.permanent_office
    fill_in "User", with: @user_info.user_id
    click_on "Create User info"

    assert_text "User info was successfully created"
    click_on "Back"
  end

  test "updating a User info" do
    visit user_infos_url
    click_on "Edit", match: :first

    fill_in "Alt number", with: @user_info.alt_number
    fill_in "Birthday", with: @user_info.birthday
    fill_in "Current office", with: @user_info.current_office
    fill_in "Designation", with: @user_info.designation
    fill_in "Extension", with: @user_info.extension
    fill_in "Image", with: @user_info.image
    fill_in "Mob number", with: @user_info.mob_number
    fill_in "Name", with: @user_info.name
    fill_in "Permanent office", with: @user_info.permanent_office
    fill_in "User", with: @user_info.user_id
    click_on "Update User info"

    assert_text "User info was successfully updated"
    click_on "Back"
  end

  test "destroying a User info" do
    visit user_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User info was successfully destroyed"
  end
end
