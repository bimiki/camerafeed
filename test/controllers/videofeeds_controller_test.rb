require "test_helper"

class VideofeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videofeed = videofeeds(:one)
  end

  test "should get index" do
    get videofeeds_url
    assert_response :success
  end

  test "should get new" do
    get new_videofeed_url
    assert_response :success
  end

  test "should create videofeed" do
    assert_difference("Videofeed.count") do
      post videofeeds_url, params: { videofeed: { index: @videofeed.index, video: @videofeed.video } }
    end

    assert_redirected_to videofeed_url(Videofeed.last)
  end

  test "should show videofeed" do
    get videofeed_url(@videofeed)
    assert_response :success
  end

  test "should get edit" do
    get edit_videofeed_url(@videofeed)
    assert_response :success
  end

  test "should update videofeed" do
    patch videofeed_url(@videofeed), params: { videofeed: { index: @videofeed.index, video: @videofeed.video } }
    assert_redirected_to videofeed_url(@videofeed)
  end

  test "should destroy videofeed" do
    assert_difference("Videofeed.count", -1) do
      delete videofeed_url(@videofeed)
    end

    assert_redirected_to videofeeds_url
  end
end
