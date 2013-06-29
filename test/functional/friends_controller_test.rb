require 'test_helper'

class FriendsControllerTest < ActionController::TestCase
  setup do
    @friend = friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friend" do
    assert_difference('Friend.count') do
      post :create, friend: { area: @friend.area, contact_interval: @friend.contact_interval, last_contact: @friend.last_contact, last_meeting: @friend.last_meeting, location_0: @friend.location_0, location_1: @friend.location_1, location_2: @friend.location_2, meeting_interval: @friend.meeting_interval, name: @friend.name, next_meeting: @friend.next_meeting }
    end

    assert_redirected_to friend_path(assigns(:friend))
  end

  test "should show friend" do
    get :show, id: @friend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friend
    assert_response :success
  end

  test "should update friend" do
    put :update, id: @friend, friend: { area: @friend.area, contact_interval: @friend.contact_interval, last_contact: @friend.last_contact, last_meeting: @friend.last_meeting, location_0: @friend.location_0, location_1: @friend.location_1, location_2: @friend.location_2, meeting_interval: @friend.meeting_interval, name: @friend.name, next_meeting: @friend.next_meeting }
    assert_redirected_to friend_path(assigns(:friend))
  end

  test "should destroy friend" do
    assert_difference('Friend.count', -1) do
      delete :destroy, id: @friend
    end

    assert_redirected_to friends_path
  end
end
