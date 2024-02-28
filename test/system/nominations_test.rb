require "application_system_test_case"

class NominationsTest < ApplicationSystemTestCase
  setup do
    @nomination = nominations(:one)
  end

  test "visiting the index" do
    visit nominations_url
    assert_selector "h1", text: "Nominations"
  end

  test "creating a Nomination" do
    visit nominations_url
    click_on "New Nomination"

    fill_in "Body", with: @nomination.body
    fill_in "Receiverid", with: @nomination.receiverId
    fill_in "Receiverimage", with: @nomination.receiverImage
    fill_in "Receivername", with: @nomination.receiverName
    fill_in "Senderid", with: @nomination.senderId
    fill_in "Sendername", with: @nomination.senderName
    fill_in "Type", with: @nomination.type
    click_on "Create Nomination"

    assert_text "Nomination was successfully created"
    click_on "Back"
  end

  test "updating a Nomination" do
    visit nominations_url
    click_on "Edit", match: :first

    fill_in "Body", with: @nomination.body
    fill_in "Receiverid", with: @nomination.receiverId
    fill_in "Receiverimage", with: @nomination.receiverImage
    fill_in "Receivername", with: @nomination.receiverName
    fill_in "Senderid", with: @nomination.senderId
    fill_in "Sendername", with: @nomination.senderName
    fill_in "Type", with: @nomination.type
    click_on "Update Nomination"

    assert_text "Nomination was successfully updated"
    click_on "Back"
  end

  test "destroying a Nomination" do
    visit nominations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nomination was successfully destroyed"
  end
end
