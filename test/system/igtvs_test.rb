require "application_system_test_case"

class IgtvsTest < ApplicationSystemTestCase
  setup do
    @igtv = igtvs(:one)
  end

  test "visiting the index" do
    visit igtvs_url
    assert_selector "h1", text: "Igtvs"
  end

  test "creating a Igtv" do
    visit igtvs_url
    click_on "New Igtv"

    click_on "Create Igtv"

    assert_text "Igtv was successfully created"
    click_on "Back"
  end

  test "updating a Igtv" do
    visit igtvs_url
    click_on "Edit", match: :first

    click_on "Update Igtv"

    assert_text "Igtv was successfully updated"
    click_on "Back"
  end

  test "destroying a Igtv" do
    visit igtvs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Igtv was successfully destroyed"
  end
end
