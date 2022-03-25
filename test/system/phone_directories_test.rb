require "application_system_test_case"

class PhoneDirectoriesTest < ApplicationSystemTestCase
  setup do
    @phone_directory = phone_directories(:one)
  end

  test "visiting the index" do
    visit phone_directories_url
    assert_selector "h1", text: "Phone directories"
  end

  test "should create phone directory" do
    visit phone_directories_url
    click_on "New phone directory"

    fill_in "Email", with: @phone_directory.email
    fill_in "Name", with: @phone_directory.name
    fill_in "Phone", with: @phone_directory.phone
    click_on "Create Phone directory"

    assert_text "Phone directory was successfully created"
    click_on "Back"
  end

  test "should update Phone directory" do
    visit phone_directory_url(@phone_directory)
    click_on "Edit this phone directory", match: :first

    fill_in "Email", with: @phone_directory.email
    fill_in "Name", with: @phone_directory.name
    fill_in "Phone", with: @phone_directory.phone
    click_on "Update Phone directory"

    assert_text "Phone directory was successfully updated"
    click_on "Back"
  end

  test "should destroy Phone directory" do
    visit phone_directory_url(@phone_directory)
    click_on "Destroy this phone directory", match: :first

    assert_text "Phone directory was successfully destroyed"
  end
end
