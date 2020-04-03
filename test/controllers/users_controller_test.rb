require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { account_type: @user.account_type, address: @user.address, birth_date: @user.birth_date, contact: @user.contact, current_sign_in: @user.current_sign_in, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, last_sign_in: @user.last_sign_in, parent_name: @user.parent_name } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { account_type: @user.account_type, address: @user.address, birth_date: @user.birth_date, contact: @user.contact, current_sign_in: @user.current_sign_in, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, last_sign_in: @user.last_sign_in, parent_name: @user.parent_name } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
