require "test_helper"

class MyExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_experience = my_experiences(:one)
  end

  test "should get index" do
    get my_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_my_experience_url
    assert_response :success
  end

  test "should create my_experience" do
    assert_difference('MyExperience.count') do
      post my_experiences_url, params: { my_experience: { Company: @my_experience.Company, Description: @my_experience.Description, Duration: @my_experience.Duration, Location: @my_experience.Location, Role: @my_experience.Role } }
    end

    assert_redirected_to my_experience_url(MyExperience.last)
  end

  test "should show my_experience" do
    get my_experience_url(@my_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_experience_url(@my_experience)
    assert_response :success
  end

  test "should update my_experience" do
    patch my_experience_url(@my_experience), params: { my_experience: { Company: @my_experience.Company, Description: @my_experience.Description, Duration: @my_experience.Duration, Location: @my_experience.Location, Role: @my_experience.Role } }
    assert_redirected_to my_experience_url(@my_experience)
  end

  test "should destroy my_experience" do
    assert_difference('MyExperience.count', -1) do
      delete my_experience_url(@my_experience)
    end

    assert_redirected_to my_experiences_url
  end
end
