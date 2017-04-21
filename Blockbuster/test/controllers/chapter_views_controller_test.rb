require 'test_helper'

class ChapterViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chapter_view = chapter_views(:one)
  end

  test "should get index" do
    get chapter_views_url
    assert_response :success
  end

  test "should get new" do
    get new_chapter_view_url
    assert_response :success
  end

  test "should create chapter_view" do
    assert_difference('ChapterView.count') do
      post chapter_views_url, params: { chapter_view: { chapter: @chapter_view.chapter, review: @chapter_view.review, user: @chapter_view.user } }
    end

    assert_redirected_to chapter_view_url(ChapterView.last)
  end

  test "should show chapter_view" do
    get chapter_view_url(@chapter_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_chapter_view_url(@chapter_view)
    assert_response :success
  end

  test "should update chapter_view" do
    patch chapter_view_url(@chapter_view), params: { chapter_view: { chapter: @chapter_view.chapter, review: @chapter_view.review, user: @chapter_view.user } }
    assert_redirected_to chapter_view_url(@chapter_view)
  end

  test "should destroy chapter_view" do
    assert_difference('ChapterView.count', -1) do
      delete chapter_view_url(@chapter_view)
    end

    assert_redirected_to chapter_views_url
  end
end
