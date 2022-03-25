require "test_helper"

class PhoneDirectoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_directory = phone_directories(:one)
  end

  test "should get index" do
    get phone_directories_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_directory_url
    assert_response :success
  end

  test "should create phone_directory" do
    assert_difference("PhoneDirectory.count") do
      post phone_directories_url, params: { phone_directory: { email: @phone_directory.email, name: @phone_directory.name, phone: @phone_directory.phone } }
    end

    assert_redirected_to phone_directory_url(PhoneDirectory.last)
  end

  test "should show phone_directory" do
    get phone_directory_url(@phone_directory)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_directory_url(@phone_directory)
    assert_response :success
  end

  test "should update phone_directory" do
    patch phone_directory_url(@phone_directory), params: { phone_directory: { email: @phone_directory.email, name: @phone_directory.name, phone: @phone_directory.phone } }
    assert_redirected_to phone_directory_url(@phone_directory)
  end

  test "should destroy phone_directory" do
    assert_difference("PhoneDirectory.count", -1) do
      delete phone_directory_url(@phone_directory)
    end

    assert_redirected_to phone_directories_url
  end
end
