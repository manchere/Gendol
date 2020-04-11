require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Address", with: @user.address
    fill_in "Birth date", with: @user.birth_date
    fill_in "Contact", with: @user.contact
    fill_in "Created at", with: @user.created_at
    fill_in "Current sign in", with: @user.current_sign_in
    fill_in "Deleted at", with: @user.deleted_at
    fill_in "Email", with: @user.email
    fill_in "Encrypted password", with: @user.encrypted_password
    fill_in "First name", with: @user.first_name
    fill_in "Gender", with: @user.gender
    fill_in "Guardian", with: @user.guardian
    fill_in "Last name", with: @user.last_name
    fill_in "Last sign in", with: @user.last_sign_in
    fill_in "Password", with: @user.password
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Address", with: @user.address
    fill_in "Birth date", with: @user.birth_date
    fill_in "Contact", with: @user.contact
    fill_in "Created at", with: @user.created_at
    fill_in "Current sign in", with: @user.current_sign_in
    fill_in "Deleted at", with: @user.deleted_at
    fill_in "Email", with: @user.email
    fill_in "Encrypted password", with: @user.encrypted_password
    fill_in "First name", with: @user.first_name
    fill_in "Gender", with: @user.gender
    fill_in "Guardian", with: @user.guardian
    fill_in "Last name", with: @user.last_name
    fill_in "Last sign in", with: @user.last_sign_in
    fill_in "Password", with: @user.password
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
