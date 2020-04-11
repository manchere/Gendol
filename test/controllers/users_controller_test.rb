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
      post users_url, params: { user: { address: @user.address, birth_date: @user.birth_date, contact: @user.contact, created_at: @user.created_at, current_sign_in: @user.current_sign_in, deleted_at: @user.deleted_at, email: @user.email, encrypted_password: @user.encrypted_password, first_name: @user.first_name, gender: @user.gender, guardian: @user.guardian, last_name: @user.last_name, last_sign_in: @user.last_sign_in, password: @user.password } }
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
    patch user_url(@user), params: { user: { address: @user.address, birth_date: @user.birth_date, contact: @user.contact, created_at: @user.created_at, current_sign_in: @user.current_sign_in, deleted_at: @user.deleted_at, email: @user.email, encrypted_password: @user.encrypted_password, first_name: @user.first_name, gender: @user.gender, guardian: @user.guardian, last_name: @user.last_name, last_sign_in: @user.last_sign_in, password: @user.password } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
