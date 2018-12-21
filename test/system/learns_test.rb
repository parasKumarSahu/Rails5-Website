require "application_system_test_case"

class LearnsTest < ApplicationSystemTestCase
  setup do
    @learn = learns(:one)
  end

  test "visiting the index" do
    visit learns_url
    assert_selector "h1", text: "Learns"
  end

  test "creating a Learn" do
    visit learns_url
    click_on "New Learn"

    fill_in "Thumbnail", with: @learn.thumbnail
    fill_in "Thumbnail size", with: @learn.thumbnail_size
    fill_in "Thumbnail type", with: @learn.thumbnail_type
    fill_in "Video link", with: @learn.video_link
    click_on "Create Learn"

    assert_text "Learn was successfully created"
    click_on "Back"
  end

  test "updating a Learn" do
    visit learns_url
    click_on "Edit", match: :first

    fill_in "Thumbnail", with: @learn.thumbnail
    fill_in "Thumbnail size", with: @learn.thumbnail_size
    fill_in "Thumbnail type", with: @learn.thumbnail_type
    fill_in "Video link", with: @learn.video_link
    click_on "Update Learn"

    assert_text "Learn was successfully updated"
    click_on "Back"
  end

  test "destroying a Learn" do
    visit learns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Learn was successfully destroyed"
  end
end
