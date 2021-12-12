require "application_system_test_case"

class VideofeedsTest < ApplicationSystemTestCase
  setup do
    @videofeed = videofeeds(:one)
  end

  test "visiting the index" do
    visit videofeeds_url
    assert_selector "h1", text: "Videofeeds"
  end

  test "should create videofeed" do
    visit videofeeds_url
    click_on "New videofeed"

    fill_in "Index", with: @videofeed.index
    fill_in "Video", with: @videofeed.video
    click_on "Create Videofeed"

    assert_text "Videofeed was successfully created"
    click_on "Back"
  end

  test "should update Videofeed" do
    visit videofeed_url(@videofeed)
    click_on "Edit this videofeed", match: :first

    fill_in "Index", with: @videofeed.index
    fill_in "Video", with: @videofeed.video
    click_on "Update Videofeed"

    assert_text "Videofeed was successfully updated"
    click_on "Back"
  end

  test "should destroy Videofeed" do
    visit videofeed_url(@videofeed)
    click_on "Destroy this videofeed", match: :first

    assert_text "Videofeed was successfully destroyed"
  end
end
