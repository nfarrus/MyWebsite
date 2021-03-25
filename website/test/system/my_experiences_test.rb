require "application_system_test_case"

class MyExperiencesTest < ApplicationSystemTestCase
  setup do
    @my_experience = my_experiences(:one)
  end

  test "visiting the index" do
    visit my_experiences_url
    assert_selector "h1", text: "My Experiences"
  end

  test "creating a My experience" do
    visit my_experiences_url
    click_on "New My Experience"

    fill_in "Company", with: @my_experience.Company
    fill_in "Description", with: @my_experience.Description
    fill_in "Duration", with: @my_experience.Duration
    fill_in "Location", with: @my_experience.Location
    fill_in "Role", with: @my_experience.Role
    click_on "Create My experience"

    assert_text "My experience was successfully created"
    click_on "Back"
  end

  test "updating a My experience" do
    visit my_experiences_url
    click_on "Edit", match: :first

    fill_in "Company", with: @my_experience.Company
    fill_in "Description", with: @my_experience.Description
    fill_in "Duration", with: @my_experience.Duration
    fill_in "Location", with: @my_experience.Location
    fill_in "Role", with: @my_experience.Role
    click_on "Update My experience"

    assert_text "My experience was successfully updated"
    click_on "Back"
  end

  test "destroying a My experience" do
    visit my_experiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My experience was successfully destroyed"
  end
end
