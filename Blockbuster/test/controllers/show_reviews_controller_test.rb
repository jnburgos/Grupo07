require 'test_helper'

class ShowReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @show_review = show_reviews(:one)
  end

  test "should get index" do
    get show_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_show_review_url
    assert_response :success
  end

  test "should create show_review" do
    assert_difference('ShowReview.count') do
      post show_reviews_url, params: { show_review: { review: @show_review.review, show: @show_review.show, user: @show_review.user } }
    end

    assert_redirected_to show_review_url(ShowReview.last)
  end

  test "should show show_review" do
    get show_review_url(@show_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_show_review_url(@show_review)
    assert_response :success
  end

  test "should update show_review" do
    patch show_review_url(@show_review), params: { show_review: { review: @show_review.review, show: @show_review.show, user: @show_review.user } }
    assert_redirected_to show_review_url(@show_review)
  end

  test "should destroy show_review" do
    assert_difference('ShowReview.count', -1) do
      delete show_review_url(@show_review)
    end

    assert_redirected_to show_reviews_url
  end
end
