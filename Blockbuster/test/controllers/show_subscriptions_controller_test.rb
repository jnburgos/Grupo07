require 'test_helper'

class ShowSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @show_subscription = show_subscriptions(:one)
  end

  test "should get index" do
    get show_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_show_subscription_url
    assert_response :success
  end

  test "should create show_subscription" do
    assert_difference('ShowSubscription.count') do
      post show_subscriptions_url, params: { show_subscription: { show: @show_subscription.show, user: @show_subscription.user } }
    end

    assert_redirected_to show_subscription_url(ShowSubscription.last)
  end

  test "should show show_subscription" do
    get show_subscription_url(@show_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_show_subscription_url(@show_subscription)
    assert_response :success
  end

  test "should update show_subscription" do
    patch show_subscription_url(@show_subscription), params: { show_subscription: { show: @show_subscription.show, user: @show_subscription.user } }
    assert_redirected_to show_subscription_url(@show_subscription)
  end

  test "should destroy show_subscription" do
    assert_difference('ShowSubscription.count', -1) do
      delete show_subscription_url(@show_subscription)
    end

    assert_redirected_to show_subscriptions_url
  end
end
