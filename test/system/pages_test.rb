require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit pages_url
  #
  #   assert_selector "h1", text: "Pages"
  # end
  test "visiting / renders the form" do
    visit root_url
    assert_selector "h1", text: "Stupid Coaching"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit root_url
    fill_in "question", with: "Hello"
    click_on "Tell the Coach"

    assert_text "I don't care, get dressed and go to work!"
  end
end
