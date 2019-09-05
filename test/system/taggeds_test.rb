require "application_system_test_case"

class TaggedsTest < ApplicationSystemTestCase
  setup do
    @tagged = taggeds(:one)
  end

  test "visiting the index" do
    visit taggeds_url
    assert_selector "h1", text: "Taggeds"
  end

  test "creating a Tagged" do
    visit taggeds_url
    click_on "New Tagged"

    click_on "Create Tagged"

    assert_text "Tagged was successfully created"
    click_on "Back"
  end

  test "updating a Tagged" do
    visit taggeds_url
    click_on "Edit", match: :first

    click_on "Update Tagged"

    assert_text "Tagged was successfully updated"
    click_on "Back"
  end

  test "destroying a Tagged" do
    visit taggeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tagged was successfully destroyed"
  end
end
