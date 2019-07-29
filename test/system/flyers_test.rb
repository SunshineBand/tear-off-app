require "application_system_test_case"

class FlyersTest < ApplicationSystemTestCase
  setup do
    @flyer = flyers(:one)
  end

  test "visiting the index" do
    visit flyers_url
    assert_selector "h1", text: "Flyers"
  end

  test "creating a Flyer" do
    visit flyers_url
    click_on "New Flyer"

    fill_in "Category", with: @flyer.category_id
    fill_in "Cost", with: @flyer.cost
    fill_in "Date of event", with: @flyer.date_of_event
    fill_in "Info", with: @flyer.info
    fill_in "Project", with: @flyer.project_id
    fill_in "Time", with: @flyer.time
    fill_in "Title", with: @flyer.title
    fill_in "User", with: @flyer.user_id
    click_on "Create Flyer"

    assert_text "Flyer was successfully created"
    click_on "Back"
  end

  test "updating a Flyer" do
    visit flyers_url
    click_on "Edit", match: :first

    fill_in "Category", with: @flyer.category_id
    fill_in "Cost", with: @flyer.cost
    fill_in "Date of event", with: @flyer.date_of_event
    fill_in "Info", with: @flyer.info
    fill_in "Project", with: @flyer.project_id
    fill_in "Time", with: @flyer.time
    fill_in "Title", with: @flyer.title
    fill_in "User", with: @flyer.user_id
    click_on "Update Flyer"

    assert_text "Flyer was successfully updated"
    click_on "Back"
  end

  test "destroying a Flyer" do
    visit flyers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flyer was successfully destroyed"
  end
end
